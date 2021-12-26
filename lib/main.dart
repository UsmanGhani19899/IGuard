import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/SignUp.dart';
import 'package:iguard/Screens/completed_shfts.dart';
import 'package:iguard/Screens/continue_pay.dart';
import 'package:iguard/Screens/current_shifts.dart';
import 'package:iguard/Screens/current_shits_detail.dart';
import 'package:iguard/Screens/inbox.dart';
import 'package:iguard/Screens/messages_inbox.dart';
import 'package:iguard/Screens/nurse_register.dart';
import 'package:iguard/Screens/iguard_balance_screen.dart';
import 'package:iguard/Screens/profile.dart';
import 'package:iguard/Screens/user_or_employee.dart';
import 'package:iguard/Screens/seller_rating_screen.dart';
import 'package:iguard/Widgets/bottombar.dart';

import 'Screens/buyer_rating_scree.dart';
import 'Screens/add_shift.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(IGuard());
}

class IGuard extends StatelessWidget {
  const IGuard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(backgroundColor: HexColor("#F2F2F2")),
      home: Bottom(),
      debugShowCheckedModeBanner: false,
    );
  }
}
