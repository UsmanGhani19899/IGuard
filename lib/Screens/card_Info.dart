import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/SingUp.dart';
import 'package:iguard/Screens/account_add.dart';
import 'package:iguard/Widgets/appBtn.dart';
import 'package:iguard/Widgets/text_felds.dart';

class CardInfo extends StatefulWidget {
  //const CardInfo({Key? key}) : super(key: key);
  @override
  State<CardInfo> createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  TextEditingController _nameCardController = TextEditingController();

  TextEditingController _cardNoController = TextEditingController();

  TextEditingController _cvcController = TextEditingController();

  TextEditingController _validThruController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Select Card",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: HexColor("#AF1B27"),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Please select your bank card to withdraw",
                  style: TextStyle(
                      color: appColors,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 10, left: 15, right: 15),
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppTextFields(
                            textFieldName: "Name Card",
                            hint: "Jhon Doe",
                            controller: _nameCardController),
                        AppTextFields(
                            textFieldName: "Card Number",
                            hint: "4582 2154 0012 3255",
                            controller: _cardNoController),
                        AppTextFields(
                            textFieldName: "CVC",
                            hint: "458",
                            controller: _cvcController),
                        AppTextFields(
                            textFieldName: "Valid Thru",
                            hint: "01/04",
                            controller: _validThruController),
                        AppBtn(
                            btnName: "Add",
                            onPressed: () {
                              // _formKey.currentState!.validate();
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (ctx) => AccountAdded()));
                            }),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
