import 'package:flutter/material.dart';

class CAPPElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Widget? icon;
  final Color? textColor;
  final double? textSize;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BoxConstraints? containerBoxConstraints;

  const CAPPElevatedButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.icon,
      this.textColor,
      this.textSize,
      this.backgroundColor,
      this.padding,
      this.containerBoxConstraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints:
          containerBoxConstraints ?? const BoxConstraints(minHeight: 58),
      child: ElevatedButton.icon(
        icon: icon ?? const SizedBox(),
        label: Padding(
          padding: padding ?? const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: textColor ?? Colors.black,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
