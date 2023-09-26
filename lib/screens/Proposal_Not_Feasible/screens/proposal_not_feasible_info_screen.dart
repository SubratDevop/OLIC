import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olic/commons/color_gallery.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/widgets/buttons.dart';
import 'package:olic/widgets/default_appbar.dar.dart';

import '../../../widgets/custm_text.dart';
import '../../Farmer registration Details/farmer_registration_details_screen.dart';
import '../controller/proposal_not_feasible_info_controller.dart';

class ProposalNotFeasibleInfoScreen extends StatelessWidget {
  int? index;
  ProposalNotFeasibleInfoScreen({ this.index});

  @override
  Widget build(BuildContext context) {
    ProposalNotFeasibleInfoController controller = Get.put(ProposalNotFeasibleInfoController());
    return Scaffold(
      backgroundColor: ColorGallery.white_color,
      appBar: defaultAppBar(context,
          leading_icon_visibility: true, title: "DETAILS"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.defaultPadding),
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
          
          
            infoWidget("Registration No", controller.users[index!].regiStrationNo),
            infoWidget("Name", controller.users[index!].name),
            infoWidget("Village", controller.users[index!].village),
            infoWidget("Gramapanchayat", controller.users[index!].gramaPanchayat),
            infoWidget("Block", controller.users[index!].block),
            infoWidget("District", controller.users[index!].district),
            infoWidget("Details View", controller.users[index!].detailsView),
            infoWidget("Action", controller.users[index!].action),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Divider(
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ],
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
                    onTapBtn: () => Get.to(const FarmerRegistrationDetailsScreen()),
                      text: "View",
                      bgColor: ColorGallery.white_color,
                      textColor: ColorGallery.primary_color)
                  : details == "action"
                      ? Buttons(
                          onTapBtn: () {},
                          bgColor: Colors.teal,
                          text: 'Update',
                          textColor: Colors.white,
                        )
                      : TittleText(
                          tittle: details, textWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
