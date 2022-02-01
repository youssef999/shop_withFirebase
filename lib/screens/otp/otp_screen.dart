import 'package:flutter/material.dart';
import 'package:sehetak/screens/otp/components/body.dart';
import 'package:sehetak/size_config.dart';




class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
