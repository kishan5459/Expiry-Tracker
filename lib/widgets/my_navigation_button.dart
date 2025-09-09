import 'package:flutter/material.dart';

class MyNavigationButton extends StatefulWidget {
  final Color? btnBackground;
  final Color? iconColor;
  final IconData btnIcon;
  final double? iconSize;
  final VoidCallback onPressed;
  final double? btnRadius;
  final dynamic heorTag;

  const MyNavigationButton({
    super.key,
    this.btnBackground = Colors.white,
    this.iconColor,
    required this.btnIcon,
    required this.onPressed,
    this.iconSize = 18,
    this.btnRadius = 16.0,
    this.heorTag,
  });

  @override
  State<MyNavigationButton> createState() => _MyNavigationButtonState();
}

class _MyNavigationButtonState extends State<MyNavigationButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: widget.heorTag,
      onPressed: widget.onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.btnRadius!),
      ),
      elevation: 0,
      backgroundColor: widget.btnBackground,
      child: Icon(widget.btnIcon, size: widget.iconSize),
    );
  }
}
