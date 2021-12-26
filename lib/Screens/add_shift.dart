import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/SignUp.dart';
import 'package:iguard/Screens/shift_add_fee.dart';
import 'package:iguard/Widgets/appBtn.dart';
import 'package:iguard/Widgets/text_felds.dart';
import 'package:otp_text_field/otp_field_style.dart';

class AddShift extends StatefulWidget {
  const AddShift({Key? key}) : super(key: key);

  @override
  State<AddShift> createState() => _AddShiftState();
}

class _AddShiftState extends State<AddShift> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNoController = TextEditingController();
  TextEditingController _shiftlengthController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _earController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Shift",
                style: TextStyle(
                    color: appColors,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
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
                        textFieldName: "Contact info",
                        hint: "+46 00 00 000 00",
                        controller: _phoneNoController,
                        validator: (val) => _phoneNoController.text.isEmpty
                            ? "Please enter phone number"
                            : null,
                        onChanged: (val) {
                          setState(() {
                            val = _phoneNoController.text;
                          });
                        },
                      ),
                      AppTextFields(
                        textFieldName: "Length of Shift",
                        hint: "Write here...",
                        controller: _shiftlengthController,
                        validator: (val) => _shiftlengthController.text.isEmpty
                            ? "Please enter shift of length"
                            : null,
                        onChanged: (val) {
                          setState(() {
                            val = _shiftlengthController.text;
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
                          controller: _locationController,
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
                        textFieldName: "What to Brings",
                        hint: "AhmedAlee@gmail.com",
                        controller: _emailController,
                        validator: (val) => _emailController.text.isEmpty
                            ? "Please enter email"
                            : null,
                        onChanged: (val) {
                          setState(() {
                            val = _emailController.text;
                          });
                        },
                      ),
                      AppTextFields(
                        textFieldName: "EAR?",
                        hint: "Select",
                        controller: _earController,
                        validator: (val) => _earController.text.isEmpty
                            ? "Please select ear"
                            : null,
                        onChanged: (val) {
                          setState(() {
                            val = _earController.text;
                          });
                        },
                      ),
                    ],
                  )),
              AppBtn(
                  btnName: "Continue",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => ShiftAddFee(
                                earController: _earController.text,
                                emailController: _emailController.text,
                                locationController: _locationController.text,
                                nameController: _nameController.text,
                                phoneNoController: _phoneNoController.text,
                                shiftlengthController:
                                    _shiftlengthController.text,
                                whatToBring: _emailController.text,
                              )));
                    } else {
                      Fluttertoast.showToast(msg: "Invalid Fields");
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
