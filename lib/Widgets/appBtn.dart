import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppBtn extends StatelessWidget {
  //const AppBtn({ Key? key }) : super(key: key);
  final appColors = HexColor("#1A367F");

  String btnName;
  final onPressed;

  AppBtn({required this.btnName, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20),
            primary: appColors,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text("${btnName}"),
        onPressed: onPressed,
      ),
    );
  }
}
