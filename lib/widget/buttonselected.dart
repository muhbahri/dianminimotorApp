import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ElevatedButton buildElevatedButton(
    int selectedIndex, int currentIndex, String text, Function(int) onPressed) {
  return ElevatedButton(
    onPressed: () {
      onPressed(currentIndex);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor:
          selectedIndex == currentIndex ? Color(0xFFCE9018) : Color(0x00FFFFFF),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xFFCE9018)),
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Text(
      text,
      style: GoogleFonts.readexPro(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
