  import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    this.textEditingController,
    required this.hint,
    required this.onTextChanged,
    required this.secureText,
    required this.onValidator,
    this.iconSuffix,
    required this.inputType,
  }) : super(key: key);

  final TextEditingController? textEditingController;
  final String hint;
  final bool secureText;
  final Function(String)? onTextChanged;
  final FormFieldValidator<String>? onValidator;
  final IconButton? iconSuffix;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 50,
      child: TextFormField(
        controller: textEditingController,
        onChanged: onTextChanged,
        cursorColor: Colors.teal,
        obscureText: secureText,
        keyboardType: inputType,
        validator: onValidator,
        style: const TextStyle(fontSize: 14.0),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(12),
          hintText: hint,
          hintStyle:  TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)),
          suffixIcon: iconSuffix ?? const SizedBox(),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            //borderSide: BorderSide.none
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.teal, width: 2)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red)),
        ),
      ),
    );
  }
}