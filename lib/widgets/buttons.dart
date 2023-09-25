import 'package:flutter/material.dart';
import 'package:olic/commons/color_gallery.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    this.onTapBtn,
    required this.text,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  final Function()? onTapBtn;
  final String text;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTapBtn,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ));
  }
}

class ActionBtn extends StatelessWidget {
  const ActionBtn({
    Key? key,
    this.onTapBtn,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  final Function()? onTapBtn;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTapBtn,
      color: ColorGallery.primary_color,
      textColor: ColorGallery.white_color,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
