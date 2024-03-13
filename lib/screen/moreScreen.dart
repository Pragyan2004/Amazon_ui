import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/widgets/categorywidget.dart';
import 'package:amazon_ui/widgets/searchbar.dart';
import 'package:flutter/material.dart';
class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

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
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              childAspectRatio: 2.2/3.5,
              mainAxisSpacing: 15
            ),
            itemCount: categoriesList.length,
            itemBuilder: (context,index)=>
              CategoryWidget(index: index)
            ),
      )
    );
  }
}
