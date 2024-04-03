import 'package:flutter/material.dart';

class CAPPTextFormField extends StatefulWidget {
  final String hintText;
  final IconData? icon;
  final TextStyle? textStyle;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CAPPTextFormField({
    super.key,
    required this.hintText,
    this.icon,
    this.textStyle,
    this.onChanged,
    this.validator,
  });

  @override
  _CAPPTextFormFieldState createState() => _CAPPTextFormFieldState();
}

class _CAPPTextFormFieldState extends State<CAPPTextFormField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 58),
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: widget.validator,
        obscureText: _isObscured,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          hintText: widget.hintText,
          prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
          suffixIcon: widget.icon == null
              ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                )
              : null,
          hintStyle: widget.textStyle,
        ),
      ),
    );
  }
}
