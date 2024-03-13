import 'package:amazon_ui/screen/resultScreen.dart';
import 'package:amazon_ui/screen/searchScreen.dart';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:flutter/material.dart';
class SearchBarWidget extends StatelessWidget {
  final bool isReadOnly;
  final bool hasBackButton;
  SearchBarWidget({Key?key, required this.isReadOnly, required this.hasBackButton})
  :super(key:key);

  OutlineInputBorder border=OutlineInputBorder(borderRadius: BorderRadius.circular(7),borderSide: BorderSide(color: Colors.grey,width: 1));
  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return Container(
        height: kAppBarHeight,
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: backgroundGradient,
           begin: Alignment.centerLeft,
           end: Alignment.centerRight,
         )
       ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon:Icon(Icons.arrow_back)),
            SizedBox(
                width:screenSize.width * 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: Offset(0,5),
                      )
                    ]
                  ),
                  child: TextField(
                    onSubmitted:(String query){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(query: query),));
                    },
                    readOnly: isReadOnly,
                    onTap: (){
                      if(isReadOnly){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Search for Something in Amazon",
                      fillColor: Colors.white,
                      filled: true,
                      border: border,
                      focusedBorder: border,
                    ),
                  ),
                )
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.mic_outlined))
          ],
        ),
    );
  }
}
