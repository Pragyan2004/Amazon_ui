import 'package:amazon_ui/pages/screen_layout.dart';
import 'package:amazon_ui/pages/sign_up.dart';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/custom_button.dart';
import 'package:amazon_ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
  }
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
                      Container(
                        height: screenSize.height*0.6,
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
                            Text("Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 33
                            ),),
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
                  Row(
                    children: [
                      Expanded(

                        child: Container(
                          height: 1,
                            color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("New to Amamzon",style: TextStyle(
                          color: Colors.grey
                        ),),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  CustomButton(
                      child: Text(
                        "Create an account",
                        style: TextStyle(
                          letterSpacing: 0.6,
                          color: Colors.black
                        ),
                      ),
                      color: Colors.grey[400]!,
                      isLoading: false,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const SignUpScreen();
                        }));
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
