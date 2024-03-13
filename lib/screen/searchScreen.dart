import 'package:amazon_ui/utils/constants.dart';
import 'package:amazon_ui/widgets/searchbar.dart';
import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
          child: SearchBarWidget(isReadOnly: true, hasBackButton: false),
      )
    );
  }
}
