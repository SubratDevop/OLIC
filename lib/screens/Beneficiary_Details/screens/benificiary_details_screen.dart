import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/routes/routes.dart';
import 'package:olic/screens/Beneficiary_Details/model/user_modal.dart';

import '../../../commons/color_gallery.dart';
import '../../../widgets/default_appbar.dar.dart';
import '../../../widgets/multi_floating_btn.dart';
import '../../../widgets/search_bar.dart';
import '../controller/benificiary_details_controller.dart';
import 'benificiary_info_screen.dart';

class Beneficiary_Details_Screen extends StatelessWidget {
  Beneficiary_Details_Screen({super.key});

  // final columns = [
  @override
  Widget build(BuildContext context) {
    BenificiaryDetailsController controller =
        Get.put(BenificiaryDetailsController());
    return Scaffold(
      backgroundColor: ColorGallery.white_color,
      appBar: defaultAppBar(context,
          leading_icon_visibility: false, title: "BENEFICIARY DETAILS"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.defaultPadding),
        child: 
        
          
           Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              //! Search Bar
              DefaultSearchBar(),

              // //! Details list in Table format
              const SizedBox(
                height: 20,
              ),
              Obx(
             ()=>DataTable(
                  columnSpacing: 15,
                  showCheckboxColumn: false,
                  horizontalMargin: 10,
                  showBottomBorder: true,
                  sortAscending: controller.isAsending.value,
              
                  //  sortColumnIndex: controller.sortColumnIndex.value,
                   sortColumnIndex: controller.sortColumnIndex.value,
                  columns: controller.getColumns(),
              
                  rows: controller.users
                      .map(
                        (user) => DataRow(
                          cells: [
                            DataCell(
                              Text(user.regiStrationNo!),
                            ),
                            DataCell(
                              Text(user.name!),
                            ),
                            DataCell(
                              Text(user.mobileNo!),
                            ),
                            DataCell(
                              Icon(
                                FontAwesome.arrow_right,
                                size: AppDimension.iconsmallSize,
                              ),
                            ),
                          ],
                          onSelectChanged: (bool? selected) {
                            if (selected!) {
                              print("&------------");
                              debugPrint(
                                  "Selected row = ${controller.users.indexOf(user)}");
                              Get.to(
                                BeneficiaryInfoScreen(
                                  index: controller.users.indexOf(user),
                                ),
                              );
                              // Get.toNamed("/BeneficiaryInfoScreen");
                            }
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
       
       
      ),
      floatingActionButton: MultiFloatingBtn(),
    );
  }
}
