// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Account", style: TextStyle(color: Color(0xff1A132F)),),
      ),
    );
  }
}
