import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';

class AppEntryButton extends StatelessWidget {
  const AppEntryButton({
    Key? key,
    required this.callback,
    required this.text,
    this.icon,
    this.padding = const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final VoidCallback callback;
  final String text;
  final Icon? icon;

  Widget _buttonCenter() {
    final Widget textWidget = Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );

    return icon != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon!,
              const SizedBox(width: 5),
              textWidget,
            ],
          )
        : textWidget;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: AppColors.mainColor,
        backgroundColor: AppColors.secondaryColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      onPressed: () => callback(),
      child: _buttonCenter(),
    );
  }
}
