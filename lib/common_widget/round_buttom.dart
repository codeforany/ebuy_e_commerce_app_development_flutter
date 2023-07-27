import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const RoundButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: TColor.primary,
      minWidth: double.maxFinite,
      height: 44,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      child: Text(
        title,
        style: TextStyle(color: TColor.white, fontSize: 16),
      ),
    );
  }
}
