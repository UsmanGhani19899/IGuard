import 'package:flutter/material.dart';
import 'package:iguard/widgets/appBtn.dart';

import 'package:otp_text_field/otp_field.dart';

import 'package:otp_text_field/style.dart';

class Forgot extends StatefulWidget {
  // const Forgot({Key? key}) : super(key: key);
  TextEditingController _numbercontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  late String textFieldName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Verifying\nyour number',
                    style: TextStyle(
                        color: Color(0XFF1A367F),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 26,
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    "We've sent your varification code to +46\n00 000 00 00",
                    style: TextStyle(color: Color(0XFF59595C), fontSize: 16.5),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20, top: 55),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mobile Number",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            child: TextFormField(
                          controller: widget._numbercontroller,
                          keyboardType: TextInputType.number,
                          key: widget._formkey,
                          decoration: InputDecoration(
                            hintText: "+46 00 000 00 00",
                            suffixIcon: Container(
                              height: 27,
                              width: 98,
                              margin: EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                  color: Color(0XFF1A367F),
                                  borderRadius: BorderRadius.circular(13)),
                              child: Center(
                                child: Text(
                                  "Send Code",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 34),
                        child: Text(
                          "Enter Code",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ),
                      OTPTextField(
                        fieldStyle: FieldStyle.underline,
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldWidth: 65,
                        // outlineBorderRadius: 15,
                        style:
                            TextStyle(fontSize: 65, color: Color(0XFF59595C)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                  ),
                  child: AppBtn(btnName: "Submit", onPressed: () {}),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 31),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Resend code",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(0XFF1A367F)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text("1:20 min left"),
                      )
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
