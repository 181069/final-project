import 'dart:html';

import 'package:api_project/card-page/card-item.dart';
import 'package:api_project/data/MyProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'CardItemClass.dart';

class CardPage extends StatefulWidget {
  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  CardItemData card = CardItemData(
      productName: "fatima",
      productPrice: "5",
      productDescription: "israa abd mariam",
      imageUrl: 'assets/images/cream.jpeg',
      productIsFaviorite: true,
      );

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
        centerTitle: true,
        title: Container(
          // color: Color(0xffc38e70),
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
            size: 25,
          ),
        ],
      ),
      backgroundColor: Color(0xffe6b8a2).withOpacity(.2),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Color(0xfffcf1e9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "myCard",
                      style: GoogleFonts.dancingScript(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3f070d),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 10,
            child: ListView(
              children: [
                CardItem(card),
                CardItem(card),
                CardItem(card),
                CardItem(card),
                CardItem(card),
                CardItem(card),
                CardItem(card),
                CardItem(card),
                CardItem(card),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.fromLTRB(15, 0, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Total = ",
                      style: GoogleFonts.quicksand(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3f070d),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "150\$",
                      style: GoogleFonts.quicksand(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3f070d),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.all(2),
                    margin: EdgeInsets.fromLTRB(0, 0, 8, 40),
                    child: FlatButton(
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "buy",
                            style: GoogleFonts.dancingScript(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                      color: Color(0xff3f070d),
                      minWidth: 170,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
