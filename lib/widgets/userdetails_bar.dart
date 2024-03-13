import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:flutter/material.dart';
class UserDetailsBar extends StatelessWidget {
  final double offset;
  const UserDetailsBar({super.key, required this.offset});

  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return Positioned(
      top:-offset/3,
      child: Container(
        height: kAppBarHeight/2,
        width: screenSize.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: lightBackgroundaGradient,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 20),
          child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.location_on_outlined,size: 20,color: Colors.grey.shade900,),
                ),
                SizedBox(
                  width: screenSize.width*0.7,
                  child: Text("Deliver to You - Address",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade900
                  ),),
                )
              ],
            ),
        ),

      ),
    );
  }
}
