import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Core/auth.dart';
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
TextEditingController _addresscontroller = TextEditingController();

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  Auth _auth = Auth();
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
                            validator: (val) => _nameController.text.isEmpty
                                ? "Please enter name"
                                : null,
                            onChanged: (val) {
                              setState(() {
                                val = _nameController.text;
                              });
                            },
                          ),
                          AppTextFields(
                            textFieldName: "Email",
                            hint: "johndoe1@gmail.com",
                            controller: _emailController,
                            validator: (val) {
                              if (_emailController.text.isEmpty) {
                                return ("Please enter email");
                              }
                              ;

                              if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(val)) {
                                return ("Please Enter a valid email");
                              }
                              return null;
                            },
                            onChanged: (val) {
                              setState(() {
                                val = _emailController.text;
                              });
                            },
                          ),
                          AppTextFields(
                            textFieldName: "Mobile Number",
                            hint: "+46 000 0000 000",
                            controller: _mobNoController,
                            validator: (val) => _mobNoController.text.isEmpty
                                ? "Please enter PhoneNo"
                                : null,
                            onChanged: (val) {
                              setState(() {
                                val = _mobNoController.text;
                              });
                            },
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                child: TextFormField(
                              controller: _addresscontroller,
                              validator: (val) =>
                                  _addresscontroller.text.isEmpty
                                      ? "Please enter address"
                                      : null,
                              onChanged: (val) {
                                setState(() {
                                  val = _addresscontroller.text;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "write here...",
                                suffixIcon: Container(
                                  height: 27,
                                  width: 98,
                                  margin: EdgeInsets.only(bottom: 16),
                                  decoration: BoxDecoration(
                                      color: Color(0XFF1A367F),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Center(
                                    child: Text(
                                      "Current location",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AppTextFields(
                            textFieldName: "Password",
                            hint: "*********",
                            controller: _passwordController,
                            validator: (val) => _passwordController.text.isEmpty
                                ? "Please enter password"
                                : null,
                            onChanged: (val) {
                              setState(() {
                                val = _passwordController.text;
                              });
                            },
                          ),
                          AppTextFields(
                            textFieldName: "Confirm Password",
                            hint: "*********",
                            controller: _confirmpasswordController,
                            validator: (val) =>
                                _confirmpasswordController.text.isEmpty
                                    ? "Please enter password"
                                    : _confirmpasswordController.text !=
                                            _passwordController.text
                                        ? "Password dont match"
                                        : null,
                            onChanged: (val) {
                              setState(() {
                                val = _confirmpasswordController.text;
                              });
                            },
                          ),
                        ],
                      )),
                ),
                AppBtn(
                    btnName: "SignUp",
                    onPressed: () {
                      _auth.SignUp(
                        email: _emailController.text,
                        nameController: _nameController,
                        password: _passwordController.text,
                        addressController: _addresscontroller,
                        phoneNoController: _mobNoController,
                        formKey: _formKey,
                      );
                      // _formKey.currentState!.validate();
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //     builder: (ctx) => LicennseScreen()));
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
