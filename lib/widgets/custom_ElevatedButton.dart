import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required String number,
      required int color,
      required this.onAction})
      : _number = number,
        _color = color,
        super(key: key);
  final String _number;
  final int _color;
  final void Function() onAction;

  //0xFF808080
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(_color),
        fixedSize: const Size(70, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onAction,
      child: Text(
        _number,
        style: GoogleFonts.nunito(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
