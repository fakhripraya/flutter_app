import 'package:flutter/material.dart';

class CAPPTextFormField extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData? prefixIcon;
  final bool isPassword;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  const CAPPTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    required this.isPassword,
    this.labelStyle,
    this.prefixIcon,
    this.hintStyle,
    this.onSaved,
    this.onChanged,
    this.validator,
  });

  @override
  _CAPPTextFormFieldState createState() => _CAPPTextFormFieldState();
}

class _CAPPTextFormFieldState extends State<CAPPTextFormField> {
  bool _isObscured = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 58),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.label,
              style: widget.labelStyle ?? const TextStyle(fontSize: 12),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            onChanged: widget.onChanged,
            onSaved: widget.onSaved,
            validator: widget.validator ?? _defaultValidator,
            obscureText: _isObscured,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              hintText: widget.hintText,
              prefixIcon:
                  widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
              suffixIcon: widget.isPassword
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
              hintStyle: widget.hintStyle ?? const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  String? _defaultValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (widget.label.toLowerCase() == 'email' && !_isValidEmail(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  bool _isValidEmail(String email) {
    if (email.isEmpty) {
      return 'This field is required';
    }
    // Regular expression for email validation
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }
}
