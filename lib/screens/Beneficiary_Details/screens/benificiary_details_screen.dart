import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/screens/Beneficiary_Details/model/user_modal.dart';

import '../../../commons/color_gallery.dart';
import '../../../widgets/default_appbar.dar.dart';
import '../../../widgets/search_bar.dart';
import '../controller/benificiary_details_controller.dart';
import 'benificiary_info_screen.dart';

class Beneficiary_Details_Screen extends StatefulWidget {
  Beneficiary_Details_Screen({super.key});

  @override
  State<Beneficiary_Details_Screen> createState() =>
      _Beneficiary_Details_ScreenState();
}

class _Beneficiary_Details_ScreenState
    extends State<Beneficiary_Details_Screen> {
  final columns = ['Registration\nNo', 'Name', 'Mobile\nNo', ''];
  int? sortColumnIndex;
  bool isAsending = false;
  late List<User> users;

  @override
  void initState() {
    super.initState();
    this.users = List.of(allUser);
  }

  @override
  Widget build(BuildContext context) {
    BenificiaryDetailsController controller =
        Get.put(BenificiaryDetailsController());
    return Scaffold(
      backgroundColor: ColorGallery.white_color,
      appBar: defaultAppBar(context,
          leading_icon_visibility: false, title: "BENEFICIARY DETAILS"),
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
            DataTable(
              columnSpacing: 15,
              showCheckboxColumn: false,
              horizontalMargin: 10,
              showBottomBorder: true,
              sortAscending: isAsending,
              sortColumnIndex: sortColumnIndex,
              columns: getColumns(columns),
              rows: getRows(users),
            ),
          ],
        ),
      ),
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

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [
          user.regiStrationNo,
          user.name,
          user.mobileNo,
          user.detailsPage,
        ];

        return DataRow(
          // cells: getCells(cells),
          // onSelectChanged: (bool? selected) {
          //   if (selected!) {

          //     print(cells.indexOf(user.regiStrationNo).toString());
          //   }
          //   //print("object");
          //   // print(cells.indexOf(cells[user.regiStrationNo].toString()).toString() + "selected");
          // },
          cells: cells.map(
            (data) {
              print(data);
              return DataCell(
                data == ""
                    ? InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BeneficiaryInfoScreen(),
                          ),
                        ),
                        child: Icon(
                          FontAwesome.arrow_right,
                          size: AppDimension.iconsmallSize,
                        ),
                      )
                    : Text(
                        data!,
                        style: const TextStyle(fontSize: 12),
                      ),
              );
            },
          ).toList(),
        );
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells.map(
        (data) {
          return DataCell(
            data == ""
                ? InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BeneficiaryInfoScreen(),
                      ),
                    ),
                    child: Icon(
                      FontAwesome.arrow_right,
                      size: AppDimension.iconsmallSize,
                    ),
                  )
                : Text(
                    data,
                    style: const TextStyle(fontSize: 12),
                  ),
          );
        },
      ).toList();

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
