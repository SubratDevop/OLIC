import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/screens/Beneficiary_Details/model/user_modal.dart';
import 'package:olic/screens/Proposal_Not_Feasible/screens/proposal_not_feasible_info_screen.dart';
import 'package:olic/widgets/custm_text.dart';
import 'package:olic/widgets/multi_floating_btn.dart';

import '../../../commons/color_gallery.dart';
import '../../../widgets/default_appbar.dar.dart';
import '../../../widgets/search_bar.dart';
import '../../Beneficiary_Details/screens/benificiary_info_screen.dart';
import '../controller/proposal_not_feasible_controller.dart';

class ProposalNotFeasibleScreen extends StatelessWidget {


        ProposalNotFeasibleController controller =
        Get.put(ProposalNotFeasibleController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorGallery.white_color,
      appBar: defaultAppBar(context,
          leading_icon_visibility: false,
          title: "PROPOSALS NOT-FEASIBLE DETAILS"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
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

            Center(
              child: TittleRegulatText(
                  tittle: "No data available in table",
                  textWeight: FontWeight.w400),
            )

            // Obx(
            //   ()=> DataTable(
            //     columnSpacing: 15,
            //     showCheckboxColumn: false,
            //     horizontalMargin: 10,
            //     showBottomBorder: true,
            //     sortAscending: controller.isAsending.value,
            //     sortColumnIndex: controller.sortColumnIndex.value,
            //     columns: controller.getColumns(),
            //      rows: controller.users
            //           .map(
            //             (user) => DataRow(
            //               cells: [
            //                 DataCell(
            //                   Text(user.regiStrationNo!),
            //                 ),
            //                 DataCell(
            //                   Text(user.name!),
            //                 ),
            //                 DataCell(
            //                   Text(user.mobileNo!),
            //                 ),
            //                 DataCell(
            //                   Icon(
            //                     FontAwesome.arrow_right,
            //                     size: AppDimension.iconsmallSize,
            //                   ),
            //                 ),
            //               ],
            //               onSelectChanged: (bool? selected) {
            //                 if (selected!) {
            //                   print("&------------");
            //                   debugPrint(
            //                       "Selected row = ${controller.users.indexOf(user)}");
            //                   Get.to(
            //                     ProposalNotFeasibleInfoScreen(
            //                       index: controller.users.indexOf(user),
            //                     ),
            //                   );
            //                   // Get.toNamed("/BeneficiaryInfoScreen");
            //                 }
            //               },
            //             ),
            //           )
            //           .toList(),
            
            //   ),
            // ),
        
        
          ],
        ),
      ),
      // floatingActionButton: MultiFloatingBtn(),
    );
  }
}
