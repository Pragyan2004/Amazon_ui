
import 'package:amazon_ui/pages/screen_layout.dart';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/custom_button.dart';
import 'package:amazon_ui/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  void dispose(){
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    addressController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(amazonLogoUrl,
                    height:screenSize.height*0.10,
                  ),
                  SizedBox(
                    height: screenSize.height*0.8,
                    child: FittedBox(
                      child: Container(
                          height: screenSize.height*0.85,
                          width: screenSize.width*0.8,
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 3
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sign Up",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 33
                                ),),
                              TextFieldWidget(
                                title: 'Name',
                                controller: nameController,
                                obsureText: false,
                                hintText: "Enter the Name",
                              ),
                              TextFieldWidget(
                                title: 'Address',
                                controller: addressController,
                                obsureText: false,
                                hintText: "Enter the Address",
                              ),
                              TextFieldWidget(
                                title: 'Email',
                                controller: emailController,
                                obsureText: false,
                                hintText: "Enter the Email",
                              ),
                      
                              TextFieldWidget(
                                title: 'Password',
                                controller: passwordController,
                                obsureText: true,
                                hintText: "Enter the Password",
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: CustomButton(child: Text("Sign IN",style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 0.6,
                                  ),),
                                      color: yellowColor,
                                      isLoading: false,
                                      onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenLayout()));
                                      }
                                  )
                              )
                            ],
                          )
                      ),
                    ),
                  ),
                  CustomButton(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            letterSpacing: 0.6,
                            color: Colors.black
                        ),
                      ),
                      color: Colors.grey[400]!,
                      isLoading: false,
                      onPressed: (){
                        Navigator.pop(context);
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

