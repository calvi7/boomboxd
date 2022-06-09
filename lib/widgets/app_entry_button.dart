import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppEntryButton extends StatelessWidget {
  const AppEntryButton({
    Key? key,
    required this.callback,
    required this.text,
    this.icon,
  }) : super(key: key);

  final Padding? padding = const Padding(padding: EdgeInsets.all(8));
  final VoidCallback callback;
  final String text;
  final Icon? icon;

  Widget _buttonCenter() {
    final Widget textWidget = Text(
      text,
      style: GoogleFonts.robotoMono(
        fontSize: 14,
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
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () => callback(),
      child: _buttonCenter(),
    );
  }
}
