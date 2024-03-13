import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

class City {
  final String name;
  const City({required this.name});
}

class CityAPI {
  static Future<List<City>> getCitySuggestions(String query) async {
    var requestBody = '''
      <Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/">
        <Body>
          <GetCountries xmlns="http://hotelreservation.com/user">
          </GetCountries>
        </Body>
      </Envelope>
          ''';

    //build configurations
    final response = await http.post(
      Uri.parse('http://192.168.68.64:8080/ws'),
      headers: {
        'Content-Type': 'text/xml; charset=utf-8',
      },
      body: requestBody,
    );

    print(response.statusCode);

    final XmlDocument test = XmlDocument.parse(response.body);

    return new List.empty();
  }

  // static FutureOr<List<City>> getCitySuggestions(String query) async {
  //   final url = Uri.parse('http://localhost:8080/ws/user.wsdl');
  //   final response = await http.get(url);

  //   (response.statusCode);
  //   if (response.statusCode == 200) {
  //     final List cities = json.decode(response.body);

  //     return cities.map((json) => City.fromJson(json)).where((city) {
  //       final nameLower = city.name.toLowerCase();
  //       final queryLower = query.toLowerCase();

  //       return nameLower.contains(queryLower);
  //     }).toList();
  //   } else {
  //     throw Exception();
  //   }
  // }
}
