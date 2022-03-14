import 'package:flutter/material.dart';
import 'package:local_databases/pages/log_in_page.dart';
import 'package:local_databases/pages/sign_in_page_green.dart';
import 'package:local_databases/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPageGreen(),
      routes: {
        SignUpPage.id:(context)=> SignUpPage(),
        LogInPage.id:(context)=> LogInPage(),
        SignInPageGreen.id:(context)=> SignInPageGreen(),

      },
    );
  }
}

