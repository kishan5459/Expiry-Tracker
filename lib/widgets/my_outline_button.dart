import 'package:flutter/material.dart';
import 'package:expiry_tracker/utils/colors.dart';

class MyOutlineButton extends StatefulWidget {
  final String btnText;
  final FontWeight? textWeight;
  final Color? btnBackground;
  final Color? btnTextColor;
  final double? btnTextSize;
  final VoidCallback onPressed;
  final double? borderRadius;
  final Color? borderColor;

  const MyOutlineButton({
    super.key,
    this.btnBackground = Colors.white,
    required this.btnText,
    required this.onPressed,
    this.btnTextColor = Colors.black,
    this.textWeight = FontWeight.normal,
    this.btnTextSize = 18,
    this.borderRadius = 16,
    this.borderColor = AppColors.primary,
  });

  @override
  State<MyOutlineButton> createState() => _MyFilledButtonState();
}

class _MyFilledButtonState extends State<MyOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: widget.btnBackground,
        side: BorderSide(width: 2, color: widget.borderColor!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
        ),
      ),
      child: Text(
        widget.btnText,
        style: TextStyle(
          fontWeight: widget.textWeight,
          fontFamily: "primary",
          fontSize: widget.btnTextSize,
          color: widget.btnTextColor,
        ),
      ),
    );
  }
}
