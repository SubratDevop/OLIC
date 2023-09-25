import 'package:flutter/material.dart';

import '../../commons/color_gallery.dart';
import '../../constants/screensize.dart';
import '../../widgets/buttons.dart';
import '../../widgets/custm_text.dart';
import '../../widgets/default_appbar.dar.dart';

class FarmerRegistrationDetailsScreen extends StatefulWidget {
  const FarmerRegistrationDetailsScreen({super.key});

  @override
  State<FarmerRegistrationDetailsScreen> createState() =>
      _FarmerRegistrationDetailsScreenState();
}

class _FarmerRegistrationDetailsScreenState
    extends State<FarmerRegistrationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorGallery.white_color,
      appBar: defaultAppBar(context,
          leading_icon_visibility: true, title: "FARMER REGISTRATION DETAILS"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    width: ScreenSize.width(context) * 0.40,
                    child: TittleText(tittle: "DETAILS"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: TittleText(
                    tittle:
                        "Personal Details of Beneficiary's Representative :",
                    textColor: Colors.teal),
              ),
              infoWidget("Registration No", "CUT/CLIP/11/2023"),
              infoWidget("Date & Time of Apply", "27-04-2023 09:54:13"),
              infoWidget("Father/Husband Name", "JITENDRA PANDA"),
              infoWidget("Mobile No", "9938506744"),
              infoWidget("Alternative Mobile No", "9861891419"),
              infoWidget("Email ID", "NA"),
              infoWidget("Gender", "MALE"),
              infoWidget("Age", "53"),
              infoWidget("Catagory", "GENERAL"),
              infoWidget("Marital Status", "MARRIED"),
              infoWidget("Physically Disabled", "NO"),
              infoWidget("Catagory", "GENERAL"),
              infoWidget("Aadhaar No", "	396514914331"),
              infoWidget("Aadhaar Card", "View"),
              infoWidget("BPL Number", "NA"),
              infoWidget("BPL Card", "NA"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TittleText(
                    tittle:
                        "Present Address Details of Beneficiary's Representative :",
                    textColor: Colors.teal),
              ),
              const SizedBox(
                height: 10,
              ),
              infoWidget("Village Name", "HATAMAL"),
              infoWidget("District Name", "CUTTACK"),
              infoWidget("Block Name", "TIGIRIA"),
              infoWidget("Gram Panchayat Name", "HATAMAL"),
              infoWidget("Post Office Name", "BANDALO"),
              infoWidget("PIN Code", "754030"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TittleText(
                    tittle: "Land Particulars of Proposed Project :",
                    textColor: Colors.teal),
              ),
              const SizedBox(
                height: 10,
              ),
              infoWidget("Village Name", "HATAMAL"),
              infoWidget("District Name", "TIGIRIA"),
              infoWidget("Block Name", "GENERAL"),
              infoWidget("Gram Panchayat Name", "HATAMAL"),
              infoWidget("Assembly Constituency Name", "ATHAGARH"),
              infoWidget("Tahasil Name", "TIGIRIA"),
              infoWidget("Post Office", "BANDALO"),
              infoWidget("PIN Code", "754030"),
              infoWidget("Pumping Point Khata No", "298"),
              infoWidget("Pumping Point Plot No",
                  "1690, 1620, 1587, 1635, 1619, 1617, 1355"),
              infoWidget(
                  "Approx. number of beneficiaries to be benefitted in the ayacut",
                  "100"),
              infoWidget("Type of Project", "	River Lift"),
              infoWidget("Source of Water", "River / Nalla"),
              infoWidget("Name of Water Source", "MAHANADI RIVER"),
              infoWidget(
                  "Ayacut area of Proposed Project (In Hectare)", "40 ha"),
              infoWidget(
                  "Was there a meeting for the beneficiaries of the proposed project to establish the project and form Pani Panchayat?",
                  "YES"),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Buttons(
                    onTapBtn: () {},
                    bgColor: Colors.teal,
                    text: "Print",
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    width: ScreenSize.width(context) * 0.03,
                  ),
                  Buttons(
                    onTapBtn: () {},
                    bgColor: Colors.red,
                    text: 'Back',
                    textColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
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
              width: ScreenSize.width(context) * 0.40,
              child: details == "View"
                  ? Buttons(
                      text: "View",
                      bgColor: ColorGallery.primary_color,
                      textColor: ColorGallery.primary_color)
                  : details == "action"
                      ? Buttons(
                          onTapBtn: () {},
                          bgColor: Colors.teal,
                          text: 'Update',
                          textColor: Colors.white,
                        )
                      : TittleText(
                          tittle: details, textWeight: FontWeight.w500),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Divider(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
