import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:icons_plus/icons_plus.dart';

class MultiFloatingBtn extends StatelessWidget {
  const MultiFloatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
        icon: Icons.menu, //icon on Floating action button
        activeIcon: Icons.close, //icon when menu is expanded on button
        backgroundColor: Colors.teal, //background color of button
        foregroundColor: Colors.white, //font color, icon color in button
        activeBackgroundColor:
            Colors.white, //background color when menu is expanded
        activeForegroundColor: Colors.teal,
        buttonSize: const Size(50, 50), //button size
        visible: true,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        // onOpen: () => print('OPENING DIAL'), // action when menu opens
        // onClose: () => print('DIAL CLOSED'), //action when menu closes

        elevation: 8.0, //shadow elevation of button
        shape: const CircleBorder(), //shape of button

        children: [
          SpeedDialChild(
            child: const Icon(Icons.copy),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onTap: () => print('FIRST CHILD'),
          ),
          SpeedDialChild(
            child: const Icon(
              FontAwesome.file_excel,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            onTap: () => print('SECOND CHILD'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.picture_as_pdf),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () => print('THIRD CHILD'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.print),
            foregroundColor: Colors.white,
            backgroundColor: Colors.purple,
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () => print('THIRD CHILD'),
          ),
        ]);
  }
}
