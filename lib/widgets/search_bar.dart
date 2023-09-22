import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olic/commons/color_gallery.dart';
import 'package:olic/constants/screensize.dart';

// ignore: must_be_immutable
class DefaultSearchBar extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

  DefaultSearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(03.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.contentPadding),
        child: const Row(
          children: <Widget>[
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 10.0),
            Expanded(
              child: TextField(
                cursorWidth: 1.5,
                cursorColor: Colors.grey,
                style: TextStyle(
                  decoration: TextDecoration.none,
                ),
                decoration: InputDecoration(
                  hintText: '',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
