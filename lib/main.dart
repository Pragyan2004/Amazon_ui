import 'package:amazon_ui/model/productmodel.dart';
import 'package:amazon_ui/pages/sign_in_screen.dart';
import 'package:amazon_ui/pages/sign_up.dart';
import 'package:amazon_ui/screen/productScreen.dart';
import 'package:amazon_ui/screen/resultScreen.dart';
import 'package:amazon_ui/screen/sell_screen.dart';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const AmazonClone());
}
class AmazonClone extends StatelessWidget {
  const AmazonClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Amazon Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home:Scaffold(
        body:SignInScreen()
      ),
    );
  }
}
