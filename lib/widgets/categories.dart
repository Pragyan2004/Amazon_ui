import 'package:amazon_ui/screen/resultScreen.dart';
import 'package:amazon_ui/utils/constants.dart';
import 'package:flutter/material.dart';
class CategoriesHorintalListView extends StatelessWidget {
  const CategoriesHorintalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: kAppBarHeight,
        width: double.infinity,
        color: Colors.white,
        child: ListView.builder(
            itemCount:categoriesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(query: categoriesList[index])));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 15),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                            backgroundImage: NetworkImage(categoryLogos[index],
                        )),
                        GestureDetector(
                          onTap: (){},
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(categoriesList[index]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
