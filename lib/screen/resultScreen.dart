import 'package:amazon_ui/model/productmodel.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/widgets/cart_item.dart';
import 'package:amazon_ui/widgets/resultWidget.dart';
import 'package:amazon_ui/widgets/searchbar.dart';
import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  final String query;
  const ResultScreen ({Key ? key,required this.query}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: SearchBarWidget(
          isReadOnly: true,
          hasBackButton: false,
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: RichText(
                text: TextSpan(
                children: [
                  TextSpan(text: 'Showing Result for ', style: TextStyle(
                    fontSize: 17,
                    color: Colors.black
                  )),
                  TextSpan(text: query,style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic
                  )),
                ]
              ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2/4,
                ),
                itemBuilder: (context,index){
                  return ResultWidget(product: ProductModel(url:  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png", productName: "Rick ", cost: 99, discount: 60, uid: "qwert", sellerName: "safd", sellerUid: "53453", rating: 4, noOfRating: 32),
                  );
                }),
          )
        ],
      ),
    );
  }
}
