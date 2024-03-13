import 'package:amazon_ui/model/productmodel.dart';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/cost_widget.dart';
import 'package:amazon_ui/widgets/ratingStatWidget.dart';
import 'package:flutter/material.dart';
class ResultWidget extends StatelessWidget {
  final ProductModel product;
  const ResultWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return GestureDetector(
      onTap: (){},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width:screenSize.width/3,
              child: Image.network(product.url)
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(product.productName,maxLines: 3,
            overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(child: RatingStarWidget(rating: product.rating)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(product.noOfRating.toString(),style: TextStyle(color: activeCyanColor),),
                )
              ],
            ),
          ),
          SizedBox(
              height: 20,
              child: FittedBox(
                  child: CostWidget(color: Colors.red, cost: product.cost))),
        ],
      ),
    );
  }
}
