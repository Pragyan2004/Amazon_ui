import 'package:flutter/material.dart';
class TextFieldWidget extends StatefulWidget {
 final  String title;
 final  TextEditingController controller;
  final bool obsureText;
  final String hintText;
  TextFieldWidget({super.key, required this.title, required this.controller, required this.obsureText, required this.hintText,});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    late FocusNode focusNode;
    bool isInFocus=false;
    @override
    void initState(){
      super.initState();
      focusNode=FocusNode();
      focusNode.addListener(() {
        if(focusNode.hasFocus){
          setState(() {
            isInFocus=true;
          });
        }else{
          isInFocus=false;
        }
      });
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
             isInFocus? BoxShadow(
                color: Colors.orange.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 2,
              ):
             BoxShadow(
               color: Colors.black.withOpacity(0.1),
               blurRadius: 8,
               spreadRadius: 2,
             )
            ]
          ),
          child: TextField(
            //focusNode: focusNode,
            obscureText: widget.obsureText,
            maxLines: 1,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText:widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.orange,
               width: 1,
              )
            ),
          )
          ),
        )
      ],
    );
  }
}
