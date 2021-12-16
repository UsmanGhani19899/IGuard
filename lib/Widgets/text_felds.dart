import 'package:flutter/material.dart';

class AppTextFields extends StatefulWidget {
  //const AppTextFields({Key? key}) : super(key: key);
  String textFieldName;
  String hint;
  late final controller;

  AppTextFields(
      {required this.textFieldName,
      required this.hint,
      required this.controller});

  @override
  State<AppTextFields> createState() => _AppTextFieldsState();
}

class _AppTextFieldsState extends State<AppTextFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${widget.textFieldName}",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
        ),
        TextFormField(
          validator: (val) => val!.isEmpty ? "Field is Empty" : null,
          onChanged: (val) {
            setState(() {
              widget.controller = val;
            });
          },
          controller: widget.controller,
          decoration: InputDecoration(hintText: "${widget.hint}"),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
