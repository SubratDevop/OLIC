import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/screens/Beneficiary_Details/model/user_modal.dart';
import 'package:olic/widgets/custm_text.dart';
import 'package:olic/widgets/multi_floating_btn.dart';

import '../../../commons/color_gallery.dart';
import '../../../widgets/default_appbar.dar.dart';
import '../../../widgets/search_bar.dart';
import '../../Beneficiary_Details/screens/benificiary_info_screen.dart';

class Proposal_not_feasible_Screen extends StatefulWidget {
  Proposal_not_feasible_Screen({super.key});

  @override
  State<Proposal_not_feasible_Screen> createState() =>
      _Proposal_not_feasible_ScreenState();
}

class _Proposal_not_feasible_ScreenState
    extends State<Proposal_not_feasible_Screen> {
  final columns = ['Registration\nNo', 'Name', 'Mobile\nNo', ''];
  int? sortColumnIndex;
  bool isAsending = false;
  late List<User> users;

  @override
  void initState() {
    super.initState();
    users = User.allUser();
  }

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

            // DataTable(
            //   columnSpacing: 15,
            //   showCheckboxColumn: false,
            //   horizontalMargin: 10,
            //   showBottomBorder: true,
            //   sortAscending: isAsending,
            //   sortColumnIndex: sortColumnIndex,
            //   columns: getColumns(columns),
            //   rows:
            //    users
            //       .map(
            //         (user) => DataRow(
            //           cells: [
            //             DataCell(
            //               Text(user.regiStrationNo!),
            //             ),
            //             DataCell(
            //               Text(user.name!),
            //             ),
            //             DataCell(
            //               Text(user.mobileNo!),
            //             ),
            //             DataCell(
            //               Icon(
            //                 FontAwesome.arrow_right,
            //                 size: AppDimension.iconsmallSize,
            //               ),
            //             ),
            //           ],
            //           onSelectChanged: (bool? selected) {
            //             if (selected!) {
            //               print("&------------");
            //               debugPrint("Selected row = ${users!.indexOf(user)}");
            //               Get.to(
            //                 BeneficiaryInfoScreen(
            //                   index: users.indexOf(user),
            //                 ),
            //               );
            //             }
            //           },
            //         ),
            //       )
            //       .toList(),

            // ),
          ],
        ),
      ),
      // floatingActionButton: MultiFloatingBtn(),
    );
  }

  List<DataColumn> getColumns(List<String> columns) =>
      columns.map((String column) {
        return DataColumn(
          onSort: sortingList,
          label: Row(
            children: [
              Text(column,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        );
      }).toList();

  void sortingList(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      users.sort(
        (user1, user2) => compareString(
          ascending,
          user1.regiStrationNo.toString(),
          user2.regiStrationNo.toString(),
        ),
      );
    } else if (columnIndex == 1) {
      users.sort(
        (user1, user2) => compareString(
          ascending,
          user2.name.toString(),
          user1.name.toString(),
        ),
      );
    } else if (columnIndex == 2) {
      users.sort(
        (user1, user2) => compareString(
          ascending,
          user2.mobileNo.toString(),
          user1.mobileNo.toString(),
        ),
      );
    }
    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAsending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) {
    return ascending ? value1.compareTo(value2) : value2.compareTo(value1);
  }
}
