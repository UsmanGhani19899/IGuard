import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ConfirmPay extends StatelessWidget {
  const ConfirmPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#1A367F"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Are you\nSure?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: MediaQuery.of(context).size.height * 0.002,
                width: MediaQuery.of(context).size.width * 0.07,
                decoration: BoxDecoration(color: Colors.white),
              ),
              Text(
                "If you cancel the shift you are required to pay 50% of the shift",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (ctx) => ConfirmPay()));
                  },
                  child: Text("Conitnue Pay"),
                  style: ElevatedButton.styleFrom(
                      primary: HexColor("#AF1B27"),
                      //   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (ctx) => ConfirmPay()));
                  },
                  child: Text(
                    "No Don't Cancel",
                    style: TextStyle(color: HexColor("#AF1B27")),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      //   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
