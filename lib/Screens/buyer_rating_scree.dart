import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Widgets/appBtn.dart';

class BuyerRatingScreen extends StatelessWidget {
//  const SellerRatingScreen({Key? key}) : super(key: key);
  final appColors = HexColor("#1A367F");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          title: Image(
            image: AssetImage("assets/images/logo.png"),
            height: MediaQuery.of(context).size.height * 0.05,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Almost\nThere!",
                      style: TextStyle(
                          color: appColors,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      width: 40,
                      height: 2,
                      decoration: BoxDecoration(color: Colors.pink),
                    ),
                    Text(
                      "Please give a review that how was\nthe Buyer :)",
                      style: TextStyle(
                          fontSize: 18,
                          color: HexColor("#1A1A1A"),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/profile.jpg")),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 1),
                            alignment: Alignment.center,
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                                color: HexColor("#AF1B27"),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16),
                                    topLeft: Radius.circular(10))),
                            child: Text(
                              "4.9",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Maria Snow",
                        style: TextStyle(
                            color: appColors,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Nurse",
                        style: TextStyle(
                            color: appColors,
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                      ),
                      Divider(
                        height: 40,
                      ),
                      // Divider(
                      //   height: 40,
                      // ),
                      // Text(
                      //   "49.98",
                      //   style: TextStyle(
                      //       color: appColors,
                      //       fontWeight: FontWeight.w600,
                      //       fontSize: 20),
                      // ),
                      // Divider(
                      //   height: 40,
                      // ),
                      Text(
                        "Rate your trip",
                        style: TextStyle(
                            color: appColors,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/images/yellow stars@1X.png")),
                          SizedBox(
                            width: 8,
                          ),
                          Image(image: AssetImage("assets/images/star@1X.png")),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20, right: 40),
                        margin:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade100),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "It was great working with this seller! Every tome deliveries high-quality materials! Thanks!",
                          style: TextStyle(color: appColors),
                        ),
                      ),
                      AppBtn(btnName: "Submit Rating", onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
