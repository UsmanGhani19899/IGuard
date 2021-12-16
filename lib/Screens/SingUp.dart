import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/license_accept.dart';
import 'package:iguard/Screens/user_or_employee.dart';
import 'package:iguard/Widgets/appBtn.dart';
import 'package:iguard/Widgets/text_felds.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

final appColors = HexColor("#1A367F");

TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _mobNoController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmpasswordController = TextEditingController();

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => UserOrEmployee()));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Create a\nNew Account",
                    style: TextStyle(
                        color: appColors,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTextFields(
                            textFieldName: "Name",
                            hint: "Jhon Doe",
                            controller: _nameController,
                          ),
                          AppTextFields(
                            textFieldName: "Email",
                            hint: "johndoe1@gmail.com",
                            controller: _emailController,
                          ),
                          AppTextFields(
                            textFieldName: "Mobile Number",
                            hint: "+46 000 0000 000",
                            controller: _mobNoController,
                          ),
                          AppTextFields(
                            textFieldName: "Address",
                            hint: "write here.....",
                            controller: _mobNoController,
                          ),
                          AppTextFields(
                            textFieldName: "Password",
                            hint: "*********",
                            controller: _passwordController,
                          ),
                          AppTextFields(
                            textFieldName: "Confirm Password",
                            hint: "*********",
                            controller: _confirmpasswordController,
                          ),
                        ],
                      )),
                ),
                AppBtn(
                    btnName: "SignUp",
                    onPressed: () {
                      // _formKey.currentState!.validate();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => LicennseScreen()));
                    }),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do you have an account?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Jump in",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "By creating an account, you agree to our",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Text(
                              "Terms of service",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(" and "),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
