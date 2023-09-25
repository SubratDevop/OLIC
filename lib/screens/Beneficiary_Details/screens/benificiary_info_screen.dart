import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:olic/commons/color_gallery.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/widgets/buttons.dart';
import 'package:olic/widgets/default_appbar.dar.dart';

import '../../../widgets/custm_text.dart';
import '../../Farmer registration Details/farmer_registration_details_screen.dart';
import '../model/user_modal.dart';

class BeneficiaryInfoScreen extends StatefulWidget {
  int? index;
  BeneficiaryInfoScreen({required this.index});

  @override
  State<BeneficiaryInfoScreen> createState() => _BeneficiaryInfoScreenState();
}

class _BeneficiaryInfoScreenState extends State<BeneficiaryInfoScreen> {
  List<User>? users;

  @override
  void initState() {
    users = User.allUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          
          
            infoWidget("Registration No", users![widget.index!].regiStrationNo),
            infoWidget("Name", users![widget.index!].name),
            infoWidget("Village", users![widget.index!].village),
            infoWidget("Gramapanchayat", users![widget.index!].gramaPanchayat),
            infoWidget("Block", users![widget.index!].block),
            infoWidget("District", users![widget.index!].district),
            infoWidget("Details View", users![widget.index!].detailsView),
            infoWidget("Action", users![widget.index!].action),
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
              width: ScreenSize.width(context) * 0.45,
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
