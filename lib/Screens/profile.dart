// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:iguard/Screens/SignUp.dart';

// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).backgroundColor,
//       appBar: AppBar(
//         elevation: 0,
//         toolbarHeight: 70,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//             )),
//         actions: [
//           Container(
//             child: IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.message_outlined,
//                   color: appColors,
//                 )),
//           ),
//           Container(
//             margin: EdgeInsets.only(right: 5),
//             child: IconButton(
//                 onPressed: () {}, icon: Icon(Icons.share, color: appColors)),
//           )
//         ],
//       ),
//       body: Stack(
//         alignment: Alignment.topCenter,
//         children: [
//           Column(
//             children: [
//               Expanded(
//                   child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: Image(
//                   image: AssetImage("assets/images/profile.jpg"),
//                   fit: BoxFit.cover,
//                 ),
//               )),
//               Expanded(
//                   flex: 3,
//                   child: Container(
//                     padding: EdgeInsets.only(left: 15, right: 15),
//                     margin: EdgeInsets.only(
//                         top: MediaQuery.of(context).size.height * 0.07),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           Text(
//                             "john Smith",
//                             style: TextStyle(
//                                 color: appColors,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 22),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Image(
//                               image: AssetImage(
//                                   "assets/images/yellow stars@1X.png")),
//                           SizedBox(
//                             height: 25,
//                           ),
//                           Container(
//                             alignment: Alignment.topLeft,
//                             child: Text(
//                               "About me",
//                               style: TextStyle(
//                                   color: appColors,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           ),
//                           Text(
//                             "When one door of happiness closes, another opens see the one that has been opened for us..... Read More",
//                             style: TextStyle(
//                                 color: appColors,
//                                 fontWeight: FontWeight.w300,
//                                 fontSize: 13),
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               IconButton(
//                                   onPressed: () {}, icon: Icon(Icons.facebook)),
//                               IconButton(
//                                   onPressed: () {}, icon: Icon(Icons.facebook)),
//                               IconButton(
//                                   onPressed: () {}, icon: Icon(Icons.facebook)),
//                               IconButton(
//                                   onPressed: () {}, icon: Icon(Icons.facebook)),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Text(
//                             "Reviews",
//                             style: TextStyle(
//                                 color: Colors.pink,
//                                 fontWeight: FontWeight.w600),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Stack(
//                             children: [
//                               Column(
//                                 children: [
//                                   Container(
//                                     height: MediaQuery.of(context).size.height *
//                                         0.22,
//                                     width:
//                                         MediaQuery.of(context).size.width * 0.8,
//                                     decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius:
//                                             BorderRadius.circular(10)),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Container(
//                             margin: EdgeInsets.only(
//                                 right:
//                                     MediaQuery.of(context).size.height * 0.3),
//                             height: MediaQuery.of(context).size.height * 0.18,
//                             width: MediaQuery.of(context).size.width * 0.33,
//                             decoration: BoxDecoration(
//                                 color: appColors,
//                                 borderRadius: BorderRadius.circular(10)),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//             ],
//           ),
// Container(
//   decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(10),
//       image: DecorationImage(
//           image: AssetImage("assets/images/c.png"),
//           fit: BoxFit.cover)),
//   margin:
//       EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.24),
//   height: MediaQuery.of(context).size.height * 0.1,
//   width: MediaQuery.of(context).size.width * 0.2,
// ),
// Container(
//   margin: EdgeInsets.only(
//       top: MediaQuery.of(context).size.height * 0.31,
//       left: MediaQuery.of(context).size.height * 0.08),
//   child: CircleAvatar(
//     radius: 15,
//     backgroundColor: HexColor("#AF1B27"),
//     child: Icon(
//       Icons.edit_outlined,
//       color: Colors.white,
//       size: 14,
//     ),
//   ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/SignUp.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          Container(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: appColors,
                )),
          ),
          Container(
            margin: EdgeInsets.only(right: 5),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.share, color: appColors)),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Stack(
                  // alignment: Alignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/profile.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.012,
                          left: MediaQuery.of(context).size.height * 0.44),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: HexColor("#AF1B27"),
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/images/c.png"),
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.18,
                        left: MediaQuery.of(context).size.height * 0.2,
                      ),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.25,
                          left: MediaQuery.of(context).size.height * 0.265),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: HexColor("#AF1B27"),
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Text(
                        "john Smith",
                        style: TextStyle(
                            color: appColors,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image(
                          image:
                              AssetImage("assets/images/yellow stars@1X.png")),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "About me",
                          style: TextStyle(
                              color: appColors, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        "When one door of happiness closes, another opens see the one that has been opened for us..... Read More",
                        style: TextStyle(
                            color: appColors,
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.facebook)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.facebook)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.facebook)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.facebook)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Reviews",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.w600),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height * 0.15),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "17 Nov",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Adrien Stone",
                                style: TextStyle(
                                    color: HexColor("#454F63"),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  "If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on.",
                                  style: TextStyle(
                                      color: HexColor("#78849E"),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: appColors,
                          ),
                          child: Text(
                            "A",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 60),
                          ),
                        ),
                      ],
                    ),
                  );
                })),
      ]),
    );
  }
}
