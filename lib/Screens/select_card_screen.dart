import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/card_Info.dart';
import 'package:iguard/Screens/user_or_employee.dart';
import 'package:iguard/Widgets/appBtn.dart';

class SelectCard extends StatefulWidget {
  const SelectCard({Key? key}) : super(key: key);

  @override
  State<SelectCard> createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  bool _value = false;
  int val = 1;
  @override
  Widget build(BuildContext context) {
    Widget cards() {
      return ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio(
              value: 'male',
              groupValue: _value,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Image(
              image: AssetImage("assets/images/card.png"),
              height: 40,
            ),
          ],
        ),
        title: Text(
          "Saved Card",
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
        subtitle: Text(
          "●●●● ●●●● ●●●● 1811",
          style: TextStyle(color: Colors.black, fontSize: 10),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
        ),
      );
    }

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
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [cards(), Divider(), cards(), Divider(), cards()],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            AppBtn(
                btnName: "Withdraw",
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => CardInfo()));
                }),
          ],
        ),
      ),
    );
  }
}
