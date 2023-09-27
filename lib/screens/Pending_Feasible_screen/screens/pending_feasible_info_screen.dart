import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olic/commons/color_gallery.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/screens/Total_Proposal_Feasible/screens/pdf_sc%20reen.dart';
import 'package:olic/widgets/buttons.dart';
import 'package:olic/widgets/default_appbar.dar.dart';

import '../../../widgets/custm_text.dart';
import '../controller/pending_feasible_info_controller.dart';

class PendingFeasibleInfoScreen extends StatelessWidget {
  int? index;
  PendingFeasibleInfoScreen({this.index});

  @override
  Widget build(BuildContext context) {
    PendingFeasibleInfoController controller =
        Get.put(PendingFeasibleInfoController());
    return Scaffold(
      backgroundColor: ColorGallery.white_color,
      appBar: defaultAppBar(context,
          leading_icon_visibility: true, title: "DETAILS"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TittleText(tittle: "PARAMETERS"),
                  ),
                  SizedBox(
                    width: ScreenSize.width(context) * 0.45,
                    child: TittleText(tittle: "DETAILS"),
                  ),
                ],
              ),
              infoWidget(
                  "Registration No", controller.users[index!].regiStrationNo),
              infoWidget("Name", controller.users[index!].name),
              infoWidget("Gender", controller.users[index!].gender),
              infoWidget("Mobile No", controller.users[index!].mobileNo),
              infoWidget("District", controller.users[index!].district),
              infoWidget("Block", controller.users[index!].block),
              infoWidget(
                  "Gramapanchayat", controller.users[index!].gramaPanchayat),
              infoWidget("Village", controller.users[index!].village),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column infoWidget(String? parameter, String? details) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Divider(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TittleRegulatText(tittle: parameter),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TittleText(
                tittle: ":",
              ),
            ),
            SizedBox(
              width: ScreenSize.width(Get.context!) * 0.45,
              child: details == "detailsView"
                  ? Buttons(
                      onTapBtn: () {
                        print("pdf opened");
                        Get.to(PdfScreen());
                      },
                      text: "View",
                      bgColor: ColorGallery.white_color,
                      textColor: ColorGallery.primary_color)
                  : TittleText(tittle: details, textWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
