import 'package:amazon_ui/model/productmodel.dart';
import 'package:amazon_ui/model/review_model.dart';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/cost_widget.dart';
import 'package:amazon_ui/widgets/custom_button.dart';
import 'package:amazon_ui/widgets/custom_simple_rounded.dart';
import 'package:amazon_ui/widgets/ratingStatWidget.dart';
import 'package:amazon_ui/widgets/review_widget.dart';
import 'package:amazon_ui/widgets/rewiew_dialog.dart';
import 'package:amazon_ui/widgets/searchbar.dart';
import 'package:amazon_ui/widgets/userdetails_bar.dart';
import 'package:flutter/material.dart';
class ProductScreen extends StatefulWidget {
  final ProductModel productModel;
  const ProductScreen({super.key, required this.productModel});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Expanded spaceThingy=Expanded(child:Container());
  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: SearchBarWidget(
          isReadOnly: true,
          hasBackButton: true,
        ),
      ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                    SizedBox(
                      height: screenSize.height,
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text(widget.productModel.sellerName,style: TextStyle(color: activeCyanColor,fontSize: 20),),
                                    ),
                                    Text(widget.productModel.productName),
                                  ],
                                ),
                                RatingStarWidget(rating: widget.productModel.rating)
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: screenSize.height/3,
                              constraints: BoxConstraints(maxHeight: screenSize.height/3),
                              child: Image.network(widget.productModel.url),

                            ),
                          ),
                          CostWidget(color: Colors.black, cost: widget.productModel.cost),
                          SizedBox(height: 20),
                          CustomButton(child: Text("But Now"), color: Colors.orange, isLoading: false, onPressed: (){}),
                          SizedBox(height: 10),
                          CustomButton(child: Text("Add To Cart"), color: yellowColor, isLoading: false, onPressed: (){}),
                          SizedBox(height: 20),
                          CustomSimpleRoundedButton(onPressed: (){
                            showDialog(context: context, builder: (context)=>ReviewDialog());
                          }, text:"Add a review for this product"),
                        ],
                      ),
                    ),
                      SizedBox(height: screenSize.height,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context,index){
                            return ReviewWidget(
                              review: ReviewModel(
                                sendName: "Rick",
                                description: 'Good',
                                rating: 2,
                              ),
                            );
                      }),
                      ),
                    ],
                  ),
                ),
              ),
              UserDetailsBar(offset: 0),
            ],
          ),

    )
    );
  }
}
