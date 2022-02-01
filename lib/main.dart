import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sehetak/routes.dart';
import 'package:sehetak/screens/y_products_view/product_screen.dart';
import 'package:sehetak/screens/splash/splash_screen.dart';
import 'package:sehetak/theme.dart';


void main()  {
   Firebase.initializeApp();
 // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
       home:SplashScreen(),
       //AllProductsView(), 
       //SplashScreen(),
      // We use routeName so that we dont need to remember the name
     //initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
