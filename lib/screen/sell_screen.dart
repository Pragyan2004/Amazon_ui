import 'dart:typed_data';
import 'package:amazon_ui/utils/color_themes.dart';
import 'package:amazon_ui/utils/utils.dart';
import 'package:amazon_ui/widgets/custom_button.dart';
import 'package:amazon_ui/widgets/loading_widget.dart';
import 'package:amazon_ui/widgets/text_field.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  bool isLoading = false;
  int selected = 1;
  Uint8List? image;
  TextEditingController nameController = TextEditingController();
  TextEditingController costController = TextEditingController();
  List<int> keysForDiscount = [0, 70, 60, 50];
  //keysofdiscoutn[selected -1]

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    costController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: !isLoading
              ? SingleChildScrollView(
            child: SizedBox(
              height: screenSize.height,
              width: screenSize.width,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          image == null
                              ? Image.network(
                            "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
                            height: screenSize.height / 10,
                          )
                              : Image.memory(
                            image!,
                            height: screenSize.height / 10,
                          ),
                          IconButton(
                              onPressed: () async {
                                Uint8List? temp = await Utils().pickImage();
                                if (temp != null) {
                                  setState(() {
                                    image = temp;
                                  });
                                }
                              },
                              icon: Icon(Icons.file_upload))
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 10),
                        height: screenSize.height * 0.7,
                        width: screenSize.width * 0.7,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFieldWidget(
                                title: "Name",
                                controller: nameController,

                                hintText: "Enter the name of the item", obsureText: false,),
                            TextFieldWidget(
                                title: "Cost",
                                controller: costController,
                                hintText: "Enter the cost of the item", obsureText: false,),
                            const Text(
                              "Discount",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            ListTile(
                              title: Text("None"),
                              leading: Radio(
                                value: 1,
                                groupValue: selected,
                                onChanged: (int? i) {
                                  setState(() {
                                    selected = i!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: Text("70%"),
                              leading: Radio(
                                value: 2,
                                groupValue: selected,
                                onChanged: (int? i) {
                                  setState(() {
                                    selected = i!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: Text("60%"),
                              leading: Radio(
                                value: 3,
                                groupValue: selected,
                                onChanged: (int? i) {
                                  setState(() {
                                    selected = i!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: Text("50%"),
                              leading: Radio(
                                value: 4,
                                groupValue: selected,
                                onChanged: (int? i) {
                                  setState(() {
                                    selected = i!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                          child: const Text(
                            "Sell",
                            style: TextStyle(color: Colors.black),
                          ),
                          color: yellowColor,
                          isLoading: isLoading,
                          onPressed: ()  {}
                      ),
                      CustomButton(
                          child: const Text(
                            "Back",
                            style: TextStyle(color: Colors.black),
                          ),
                          color: Colors.grey[300]!,
                          isLoading: false,
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  ),
                ),
              ),
            ),
          )
              : const LoadingWidget(),
        ));
  }
}