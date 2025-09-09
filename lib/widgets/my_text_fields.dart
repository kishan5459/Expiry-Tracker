import 'package:flutter/material.dart';
import 'package:expiry_tracker/utils/colors.dart';
import 'package:expiry_tracker/utils/custom_text_style.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String? hintText;
  final String? labelText;
  final bool? filled;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? filledColor;
  final double? borderRadius;
  final Color? borderColor;
  final Color? textColor;
  final VoidCallback? suffixIconOnPress;
  final FontWeight textWeight;
  final Color? cursorColor;
  final Color prefixIconColor;
  final Color? suffixIconColor;
  final Color? hintColor;
  final Color? labelColor;
  final TextInputType textInputType;

  const MyTextField({
    super.key,
    required this.textEditingController,
    this.hintText,
    this.labelText,
    this.filled,
    this.prefixIcon,
    this.suffixIcon,
    this.filledColor,
    this.borderRadius = 16,
    this.borderColor = AppColors.primary,
    this.textColor = Colors.white,
    this.textWeight = FontWeight.normal,
    this.suffixIconOnPress,
    this.prefixIconColor = Colors.white54,
    this.cursorColor = Colors.white60,
    this.suffixIconColor = Colors.black54,
    this.hintColor = Colors.white54,
    this.labelColor = Colors.white38,
    this.textInputType = TextInputType.text,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: widget.cursorColor,
      controller: widget.textEditingController,
      keyboardType: widget.textInputType,
      style: myTextStyle15(
        fontColor: widget.textColor!,
        fontWeight: widget.textWeight,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: widget.filled ?? false,
        fillColor: widget.filledColor,
        hintStyle: myTextStyle18(fontColor: widget.hintColor ?? Colors.white54),
        label: widget.labelText != null ? Text(widget.labelText!) : null,
        labelStyle: myTextStyle18(
          fontColor: widget.labelColor ?? Colors.white38,
        ),
        prefixIcon:
            widget.prefixIcon != null
                ? Icon(widget.prefixIcon, color: widget.prefixIconColor)
                : null,
        suffixIcon: IconButton(
          onPressed: widget.suffixIconOnPress,
          icon: Icon(widget.suffixIcon, color: widget.suffixIconColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          borderSide: BorderSide(width: 2, color: widget.borderColor!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          borderSide: BorderSide(width: 2, color: widget.borderColor!),
        ),
      ),
    );
  }
}
