import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/widgets/banner_ads.dart';
import 'package:amazon_ui/widgets/categories.dart';
import 'package:amazon_ui/widgets/loading_widget.dart';
import 'package:amazon_ui/widgets/products_showcase.dart';
import 'package:amazon_ui/widgets/searchbar.dart';
import 'package:amazon_ui/widgets/simple_product.dart';
import 'package:amazon_ui/widgets/userdetails_bar.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key?key}):super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller=ScrollController();
  double offset=0;
  @override
  void initState(){
   super.initState();
   controller.addListener(() {
     setState(() {
       offset=controller.position.pixels;
     });
   });
  }
  @override
  void dispose(){
    super.dispose();
        controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: SearchBarWidget(
        isReadOnly: true,
        hasBackButton: false,
      ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                SizedBox(height: kAppBarHeight/2),
                CategoriesHorintalListView(),
                BannerAdWidget(),
                ProductShowcaseListview(title: "Upto 70% off", children: testChildren),
                ProductShowcaseListview(title: "Upto 60% off", children:testChildren),
                ProductShowcaseListview(title: "Explore", children:testChildren),
              ],
            ),
          ),
          UserDetailsBar(offset: offset),
        ],
      )
    );
  }
}
