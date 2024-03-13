import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelresvfrontend/common/colors.dart';
import 'package:hotelresvfrontend/reservationManagement/typeaheadwidget.dart';

import '../../reservationManagement/searchWidget.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
          child: Stack(clipBehavior: Clip.none, children: [
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            'assets/images/HomeScreenBG.jpg',
            // opacity: AlwaysStoppedAnimation(0.6),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 2,
              color: backGroundLightBlue.withOpacity(0.3))
        ]),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Wander Inn',
                        style: TextStyle(
                            fontFamily: GoogleFonts.arizonia().fontFamily,
                            color: fontDarkBlue,
                            fontStyle: FontStyle.italic,
                            height: 0,
                            fontSize: 25),
                      ),
                      Text(
                        'VACATION STAYS',
                        style: TextStyle(
                            fontFamily: GoogleFonts.asar().fontFamily,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            height: 0.4,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  TextButton(
                    child: Text(
                      'Sign in',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: fontDarkBlue,
                        fontFamily: GoogleFonts.asar().fontFamily,
                      ),
                    ),
                    onPressed: null,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    // width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      'ENJOY WANDERING IN YOUR\nDREAM DESTINATION...',
                      style: TextStyle(
                          wordSpacing: 5,
                          letterSpacing: 3,
                          fontSize: 60,
                          color: Colors.white,
                          fontFamily:
                              GoogleFonts.amaticSc(fontWeight: FontWeight.w500)
                                  .fontFamily),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
            //has to be layout builder to return back sized of inside containers
            top: MediaQuery.of(context).size.height / 1.5,
            left: 16,
            right: 16,
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Where would you like to stay?',
                        style: TextStyle(
                            fontFamily: GoogleFonts.anekTamil(
                                    fontWeight: FontWeight.w600)
                                .fontFamily,
                            color: fontDarkBlue,
                            fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TypeAheadWidget(),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(color: fontDarkBlue)),
                            width: 380,
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.calendar_month_rounded,
                                  size: 30,
                                  color: iconsDeepOrange,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Check In\n',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: fontDarkBlue,
                                        fontFamily:
                                            GoogleFonts.anekTamil().fontFamily),
                                    children: const [
                                      TextSpan(
                                          text: 'Tue,15 May,2024',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  '7\nnights',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                      color: iconsDeepOrange,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Check Out\n',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: fontDarkBlue,
                                        fontFamily:
                                            GoogleFonts.anekTamil().fontFamily),
                                    children: const [
                                      TextSpan(
                                          text: 'Tue,22 May,2024',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SearchWidget('Guests', '2 People, 1 Room',
                              Icons.people_alt_outlined),
                          Container(
                            height: 70,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: lighterBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: const IconButton(
                              iconSize: 50,
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              onPressed: null,
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            )),
      ])),
    );
  }
}
