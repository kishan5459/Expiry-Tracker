import 'package:flutter/material.dart';
import 'package:expiry_tracker/utils/colors.dart';

class MyFilledButton extends StatefulWidget {
  final String btnText;
  final FontWeight? textWeight;
  final Color? btnBackground;
  final Color? btnTextColor;
  final double? btnTextSize;
  final VoidCallback onPressed;
  final double? borderRadius;

  const MyFilledButton({
    super.key,
    this.btnBackground = AppColors.primary,
    required this.btnText,
    required this.onPressed,
    this.btnTextColor = Colors.white,
    this.textWeight = FontWeight.normal,
    this.btnTextSize = 18,
    this.borderRadius = 16,
  });

  @override
  State<MyFilledButton> createState() => _MyFilledButtonState();
}

class _MyFilledButtonState extends State<MyFilledButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.btnBackground,
        elevation: 0,
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
