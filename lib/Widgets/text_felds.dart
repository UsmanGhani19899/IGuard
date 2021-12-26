import 'package:flutter/material.dart';

// class AppTextFields extends StatefulWidget {
//   //const AppTextFields({Key? key}) : super(key: key);

//   @override
//   State<AppTextFields> createState() => _AppTextFieldsState();
// }

// class _AppTextFieldsState extends State<AppTextFields> {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class AppTextFields extends StatelessWidget {
  // const AppTextFields({ Key? key }) : super(key: key);
  final String textFieldName;
  final String hint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final validator;

  AppTextFields(
      {required this.textFieldName,
      required this.hint,
      this.onChanged,
      required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${textFieldName}",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
        ),
        TextFormField(
          onChanged: onChanged,
          validator: validator,
          controller: controller,
          decoration: InputDecoration(hintText: "${hint}"),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
