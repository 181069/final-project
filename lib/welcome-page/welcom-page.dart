import 'package:api_project/product-list-page/product-list.dart';
import 'package:api_project/welcome-page/image-slider/image-slider.dart';
import 'package:bubble/bubble.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffcf1e9),
        leading: Icon(
          Icons.reorder_outlined,
          color: Colors.black,
          size: 30,
        ),
        centerTitle:true,
        title:  Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            "SHEGLAM",
            style: GoogleFonts.bebasNeue(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
      backgroundColor: Color(0xfffcf1e9),
      body:Column(
        children: [
          Expanded(
            flex:3,
            child: Container(
              child: Column(
                children: [

                  Container(
                    margin: EdgeInsets.fromLTRB(5, 12, 5, 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(7),
                            child: Text(
                              "moistrizing   ",
                              style: GoogleFonts.comfortaa(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "cleaning     ",
                                style: GoogleFonts.comfortaa(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "creams     ",
                                style: GoogleFonts.comfortaa(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "vitamins     ",
                                style: GoogleFonts.comfortaa(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "hair    ",
                                style: GoogleFonts.comfortaa(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "shampoo    ",
                                style: GoogleFonts.comfortaa(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                   // margin: EdgeInsets.fromLTRB(, 0, 0, 0),
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10,left: 5),
                      alignment: Alignment.topLeft,
                      nip: BubbleNip.leftTop,
                      color: Color.fromRGBO(244, 207, 181, 1.0),
                      child: Text('hmm lets take a look on  some hair product', style: GoogleFonts.comfortaa(
                      fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),textAlign: TextAlign.right),
                    ),
                  ),
                  Container(
                   // margin: EdgeInsets.fromLTRB(, 0, 0, 0),
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10,left: 5),
                      alignment: Alignment.topLeft,
                      nip: BubbleNip.leftTop,
                      color: Color.fromRGBO(244, 207, 181, 1.0),
                      child: Text('hmm lets take a look on  some hair product', style: GoogleFonts.comfortaa(
                      fontSize: 12,
                     
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),textAlign: TextAlign.right),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex:10,
              child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: ImageSlider())),
        ],
      ),
    );
  }
}