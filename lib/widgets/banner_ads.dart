import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:flutter/material.dart';
class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  int currentAd=0;
  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size*1.22;
    double smalladHeight=screenSize.width/5;
    return GestureDetector(
      onHorizontalDragEnd: (_){
        if (currentAd ==largeAds.length-1){
          currentAd=-1;
        }
        setState(() {
        currentAd++;
        });
      },
      child: Column(
        children: [
          Stack(
            children: [
            Image.network(
            largeAds[currentAd],
            width: double.infinity,
            ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: screenSize.width,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        backgroundColor,
                        backgroundColor.withOpacity(0)
                      ]
                    )
                  ),
                ),
              )
            ],
          ),
          Container(
            width: screenSize.width,
            height: smalladHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getSmallAdsfromIndex(0, smalladHeight),
                getSmallAdsfromIndex(1, smalladHeight),
                getSmallAdsfromIndex(2, smalladHeight),
                getSmallAdsfromIndex(3, smalladHeight),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getSmallAdsfromIndex(int index,double height){
    return  Container(
        height: height,
          width: height,
        decoration: ShapeDecoration(
          color: Colors.white,
          shadows: [BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1
          )],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),

          )
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(smallAds[index],
              fit: BoxFit.cover,),
              SizedBox(height: 10),
              Text(adItemNames[index])
            ],
          ),
        ),
    );

}
}
