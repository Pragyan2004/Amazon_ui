import 'package:amazon_ui/model/productmodel.dart';
import 'package:amazon_ui/screen/productScreen.dart';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/custom_simple_rounded.dart';
import 'package:amazon_ui/widgets/custom_square_btn.dart';
import 'package:amazon_ui/widgets/product_info.dart';
import 'package:flutter/material.dart';
class CartItemWidget extends StatelessWidget {
  final ProductModel product;
  const CartItemWidget({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return Container(
      padding:EdgeInsets.all(25),
      height: screenSize.height/2,
      width: screenSize.width,
      decoration: BoxDecoration(
          color:backgroundColor,
        border: Border(
            bottom: BorderSide(
          color: Colors.grey,
          width: 1
        ))
      ),
      child: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductScreen(productModel: product)));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width/3,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Center(child: Image.network(product.url
                        ,))),
                ),
                ProductInformationWidget(
                    productName: product.productName,
                    cost: product.cost,
                    sellerName: product.sellerName
                )
              ],
                        ),
            ),
            flex: 3,
          ),
          Expanded(child:Row(
            children: [
              CustomSquareButton(child: Icon(Icons.remove), onPressed: (){}, color: backgroundColor, dimension: 50),
              CustomSquareButton(child: Center(child: Text("0",style: TextStyle(fontSize: 25),)), onPressed: (){}, color: Colors.grey[200]!, dimension: 50),
              CustomSquareButton(child: Icon(Icons.add), onPressed: (){}, color:backgroundColor, dimension: 50),
            ],
          ),flex: 1,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CustomSimpleRoundedButton(onPressed: (){},text:"Delete"),
                      SizedBox(width: 10),
                      CustomSimpleRoundedButton(onPressed: (){},text:"Save for later"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("See more of this",style: TextStyle(color: activeCyanColor),
                      ),
                    ),
                  ),
                 ],
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
