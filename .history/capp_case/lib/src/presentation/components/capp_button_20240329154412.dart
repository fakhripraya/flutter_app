import 'package:flutter/material.dart';

class CAPPElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Widget? icon;

  const CAPPElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 58),
      child: ElevatedButton.icon(
        icon: icon ?? const SizedBox(), // Use provided icon or empty SizedBox
        label: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
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
