// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sehetak/screens/y_products_view/product_screen.dart';
import 'package:sehetak/screens/splash/components/body.dart';

import 'package:sehetak/size_config.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body:
     // AllProductsView(),
      Body(),
    );
  }
}
