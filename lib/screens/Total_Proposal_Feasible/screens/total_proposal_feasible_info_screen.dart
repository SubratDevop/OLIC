import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:olic/commons/color_gallery.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/screens/Total_Proposal_Feasible/screens/pdf_sc%20reen.dart';
import 'package:olic/widgets/buttons.dart';
import 'package:olic/widgets/default_appbar.dar.dart';

import '../../../widgets/custm_text.dart';
import '../../Farmer registration Details/farmer_registration_details_screen.dart';
import '../controller/total_proposal_feasible_info_controller.dart';

class TotalProposalFeasibleInfoScreen extends StatelessWidget {
  int? index;
  TotalProposalFeasibleInfoScreen({this.index});

  @override
  Widget build(BuildContext context) {
    TotalProposalFeasibleInfoController controller =
        Get.put(TotalProposalFeasibleInfoController());
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
              infoWidget("Applicant Name", controller.users[index!].name),
              infoWidget("Mobile", controller.users[index!].mobileNo),
              infoWidget("Project Name", "Project - 01".toUpperCase()),
              infoWidget("Village Name", "AMBILIJHARI"),
              infoWidget(
                  "Gramapanchayat", controller.users[index!].gramaPanchayat),
              infoWidget("Block", controller.users[index!].block),
              infoWidget("District", controller.users[index!].district),
              infoWidget("Type of Project", "River Lift"),
              infoWidget("Source of Water", "River / Nalla"),
              infoWidget("Water Source Name", "BAITARANI RIVER"),
              infoWidget("Ayacut in Hectare", "30"),
              infoWidget("Cropping Pattern Rabi", "08"),
              infoWidget("Scope of Power Supply", "100"),
              infoWidget("Latitude", "123456° 123456' 123456 N"),
              infoWidget("Longitude", "123° 123' 123 E"),
              infoWidget(
                  "Pumping Point Photo", controller.users[index!].detailsView),
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
