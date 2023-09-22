import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:olic/constants/screensize.dart';
import 'package:olic/screens/Beneficiary_Details/model/user_modal.dart';

import '../../commons/color_gallery.dart';
import '../../widgets/default_appbar.dar.dart';
import '../../widgets/search_bar.dart';
import 'controller/benificiary_details_controller.dart';

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

  List<DataColumn> getColumns(List<String> columns) =>
      columns.map((String column) {
        return DataColumn(
          onSort: sortingList,
          label: Row(
            children: [
              Text(column,
                  style: TextStyle(
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
          user.detailsPage
        ];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells.map(
        (data) {
          return DataCell(
            data == ""
                ? Icon(
                    FontAwesome.arrow_right,
                    size: AppDimension.iconsmallSize,
                  )
                : Text(
                    data,
                    style: TextStyle(fontSize: 12),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              //! Search Bar
              DefaultSearchBar(),

              //! Details Table
              const SizedBox(
                height: 20,
              ),
              DataTable(
                columnSpacing: 15,
                horizontalMargin: 10,
                showBottomBorder: true,
                sortAscending: isAsending,
                sortColumnIndex: sortColumnIndex,
                columns: getColumns(columns),
                rows: getRows(users),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<User> allUser = [
    User(
        regiStrationNo: "CUT/CLIP/66/2023",
        name: "BIJAYA KUMAR NAYAK",
        mobileNo: "7856241589",
        village: "PAIKIANRA",
        gramaPanchayat: "PURUNA-TIGIRIA",
        block: "TIGIRIA",
        district: "CUTTUCK",
        detailsView: "detailsView",
        action: "action",
        detailsPage: ""),
    User(
        regiStrationNo: "CUT/CLIP/11/2023",
        name: "JITENDRA PANDA",
        mobileNo: "9925621457",
        village: "HATAMAL",
        gramaPanchayat: "HATAMAL",
        block: "TIGIRIA",
        district: "CUTTUCK",
        detailsView: "detailsView",
        action: "action",
        detailsPage: ""),
  ];
}
