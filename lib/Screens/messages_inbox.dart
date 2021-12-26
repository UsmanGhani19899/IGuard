import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 02,
        shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: true,
        toolbarHeight: 80,
        title: Column(
          children: [
            Image(
              image: AssetImage("assets/images/c.png"),
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Text(
              "Thomas",
              style: TextStyle(color: Colors.black, fontSize: 12),
            )
          ],
        ),
      ),
      // body: ,
    );
  }
}
