import 'package:flutter/material.dart';
import 'package:expiry_tracker/utils/custom_text_style.dart';

class MyIconTextButton extends StatefulWidget {
  final String btnText;
  final FontWeight? textWeight;
  final Color? btnBackground;
  final Color? btnTextColor;
  final double? btnTextSize;
  final VoidCallback onPressed;
  final double? borderRadius;
  final String iconPath;
  const MyIconTextButton({
    super.key,
    this.btnBackground = Colors.white,
    required this.btnText,
    required this.onPressed,
    this.btnTextColor = Colors.black,
    this.textWeight = FontWeight.normal,
    this.btnTextSize = 18,
    this.borderRadius = 16,
    required this.iconPath,
  });

  @override
  State<MyIconTextButton> createState() => _MyFilledButtonState();
}

class _MyFilledButtonState extends State<MyIconTextButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.btnBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.iconPath, height: 30),
          const SizedBox(width: 8),
          Text(
            widget.btnText,
            style: myTextStyle18(
              fontWeight: widget.textWeight!,
              fontColor: widget.btnTextColor!,
            ),
          ),
        ],
      ),
    );
  }
}
