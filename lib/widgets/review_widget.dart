import 'package:amazon_ui/model/review_model.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/ratingStatWidget.dart';
import 'package:flutter/material.dart';
class ReviewWidget extends StatelessWidget {
  final ReviewModel review;
  const ReviewWidget({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(review.sendName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10.0),
            child: Row(
              children: [
                SizedBox(width: screenSize.width/4,
                child: FittedBox(
                  child: RatingStarWidget(
                    rating: review.rating,
                  ),
                ),
                ),
                Text(keyOfRating[review.rating-1],style:TextStyle(fontSize: 20))
              ],
            ),
          ),
          Text(review.description,maxLines: 3,overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
