import 'package:amazon_ui/screen/sell_screen.dart';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/account_screen.dart';
import 'package:amazon_ui/widgets/custom_button.dart';
import 'package:amazon_ui/widgets/products_showcase.dart';
import 'package:flutter/material.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kAppBarHeight),
          child: AccountScreenAppBar(),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenSize.height - (kAppBarHeight / 2),
            width: screenSize.width,
            child: Column(
              children: [
                IntroductionWidgetAccountScreen(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                      child: Text("Sign In",style: TextStyle(color: Colors.black),),
                      color: Colors.orange,
                      isLoading: false,
                      onPressed: (){}
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                      child: Text("Sell",style: TextStyle(color: Colors.black),),
                      color: yellowColor,
                      isLoading: false,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SellScreen()));
                      }
                  ),
                ),
                ProductShowcaseListview(
                    title: "Your Order",
                    children: testChildren,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Order Request",style: TextStyle(fontSize: 17,fontWeight:FontWeight.w500 ),)),
                ),
                Expanded(child: ListView.builder(
                  itemCount: 5,
                    itemBuilder: (context,index){
                    return ListTile(
                    title: Text("Order: Black Shoes",style: TextStyle(fontWeight: FontWeight.w800),),
                    subtitle: Text("Address: somewhere on earth"),
                    );
                    }
                )
                )
              ],
            ),
          ),
        )
    );
  }
}


class IntroductionWidgetAccountScreen extends StatelessWidget {
  const IntroductionWidgetAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: kAppBarHeight/2,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: backgroundGradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )
        ),
        child:Container(
          height: kAppBarHeight/2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0000000001),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text:"Hello,",style: TextStyle(color: Colors.grey,fontSize: 26)),
                          TextSpan(text:"USER",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 26)),
                        ]
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}

