import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/cost_widget.dart';
import 'package:flutter/material.dart';
class ProductInformationWidget extends StatelessWidget {
  final String productName;
  final double cost;
  final String sellerName;
  
  const ProductInformationWidget({super.key, required this.productName, required this.cost, required this.sellerName});


  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return SizedBox(
      width: screenSize.width/2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              productName,
              maxLines: 2,
              style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            letterSpacing: 0.9,
            overflow: TextOverflow.ellipsis
            ),),
          ),
         SizedBox(height: 7,),
Align(
    alignment: Alignment.centerLeft,
    child: CostWidget(color: Colors.black, cost: cost)
),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Sold By",
                      style: TextStyle(
                    color: Colors.grey[700],
                        fontSize: 14
                  )),
                  TextSpan(text: sellerName,
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14
                    )
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
