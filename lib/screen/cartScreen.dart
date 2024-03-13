import 'package:amazon_ui/model/productmodel.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/cart_item.dart';
import 'package:amazon_ui/widgets/custom_button.dart';
import 'package:amazon_ui/widgets/searchbar.dart';
import 'package:amazon_ui/widgets/userdetails_bar.dart';
import 'package:flutter/material.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: SearchBarWidget(
          isReadOnly: true,
          hasBackButton: false,
        ),
      ),
      body: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: kAppBarHeight/2),
                 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                        child: Text("Process to buy (n) items",
                        style: TextStyle(color: Colors.black),),
                        color: Colors.yellow,
                        isLoading: false,
                        onPressed: (){}
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder:(context,index){
                          return CartItemWidget(product: ProductModel(url:  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png", productName: "Rick ", cost: 9999, discount: 60, uid: "qwert", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32));
                        }),
                  )
                ],
              ),
              UserDetailsBar(offset: 0),
            ],
          )
      ),
    );
  }
}
