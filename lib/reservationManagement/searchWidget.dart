import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/colors.dart';

class SearchWidget extends StatefulWidget {
  final String label;
  final String hint;
  final IconData icon;

  const SearchWidget(this.label, this.hint, this.icon);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: fontDarkBlue)),
      width: 190, //needst to be dynamic
      height: 70,
      child: TextField(
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: InputBorder.none,
            prefixIcon: Icon(
              widget.icon,
              color: iconsDeepOrange,
            ),
            labelText: widget.label,
            labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: fontDarkBlue,
                fontFamily: GoogleFonts.anekTamil().fontFamily),
            hintText: widget.hint,
            hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w100,
                color: fontDarkBlue,
                fontFamily: GoogleFonts.anekTamil().fontFamily)),
      ),
    );
  }
}
