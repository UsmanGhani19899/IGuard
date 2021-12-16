import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/nurse_register.dart';
import 'package:iguard/Screens/iguard_balance_screen.dart';
import 'package:iguard/Screens/user_or_employee.dart';
import 'package:iguard/Screens/seller_rating_screen.dart';

import 'Screens/buyer_rating_scree.dart';

void main() {
  runApp(IGuard());
}

class IGuard extends StatelessWidget {
  const IGuard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: HexColor("#F2F2F2")),
      home: NurseRegister(),
      debugShowCheckedModeBanner: false,
    );
  }
}
