import 'package:amazon_ui/utils/utils.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  final Widget child;
  final Color color;
  final bool isLoading;
  final VoidCallback onPressed;
  const CustomButton({
    Key?key,
    required this.child,
    required this.color,
    required this.isLoading,
    required this.onPressed
  }):super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    Size screenSize=Utils().getScreenSize();
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: widget.color,
        fixedSize: Size(screenSize.width*0.5,
          30
        )
      ),
        onPressed:widget.onPressed,
        child: !widget.isLoading? widget.child:
            Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
            child: AspectRatio(
              aspectRatio:1/1,
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
            ),
            )
        );
  }
}
