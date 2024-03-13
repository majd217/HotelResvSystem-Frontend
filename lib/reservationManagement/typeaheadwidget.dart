import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelresvfrontend/common/colors.dart';
import 'package:hotelresvfrontend/reservationManagement/CityAPI.dart';

class TypeAheadWidget extends StatefulWidget {
  @override
  State<TypeAheadWidget> createState() => _TypeAheadWidgetState();
}

class _TypeAheadWidgetState extends State<TypeAheadWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // padding: const EdgeInsets.all(8),
      // decoration: BoxDecoration(
      //     borderRadius: const BorderRadius.all(Radius.circular(15)),
      //     border: Border.all(color: fontDarkBlue)),
      width: 190, //needst to be dynamic
      height: 70,
      child: TypeAheadField<City?>(
        builder: (context, controller, focusNode) {
          return TextField(
            // enabled: true,
            controller: controller,
            focusNode: focusNode,
            autofocus: false,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(25),
                enabled: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: new BorderSide(color: fontDarkBlue)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: new BorderSide(color: fontDarkBlue)),
                prefixIcon: Icon(
                  Icons.location_pin,
                  color: iconsDeepOrange,
                ),
                labelText: 'Destination',
                labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: fontDarkBlue,
                    fontFamily: GoogleFonts.anekTamil().fontFamily),
                hintText: 'Amman, Jordan',
                hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: fontDarkBlue,
                    fontFamily: GoogleFonts.anekTamil().fontFamily)),
          );
        },
        hideOnUnfocus: true,
        suggestionsCallback: CityAPI.getCitySuggestions,
        itemBuilder: (context, City? suggestion) {
          final city = suggestion!;
          return ListTile(
            leading: Icon(
              Icons.location_city_rounded,
              color: fontDarkBlue,
            ),
            tileColor: Colors.white,
            subtitle: Text(
              city.name,
              style: TextStyle(color: lighterBlue, fontSize: 12),
            ),
            title: Text(
              city.name,
              style: TextStyle(color: fontDarkBlue, fontSize: 15),
            ),
          );
        },
        onSelected: (City? suggestion) {
          //what happens if we click on it?
        },
      ),
    );
  }
}
