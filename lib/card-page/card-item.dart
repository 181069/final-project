import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CardItemClass.dart';

class CardItem extends StatelessWidget {
final CardItemData cardItemData;
const CardItem(this.cardItemData) ;
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            height: 120,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsetsDirectional.all(5),
                    height: 120,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(cardItemData.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(12, 15, 0, 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                        Text(
                                      cardItemData.productName,
                                      style: GoogleFonts.comfortaa(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                     cardItemData.productDescription,
                                      style: GoogleFonts.comfortaa(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                     ],
                                   ),
                                    Text(
                                      cardItemData.productPrice+"\$",
                                      style: GoogleFonts.comfortaa(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff925845),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(6, 25, 15,8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                     cardItemData.productIsFaviorite?Icon(Icons.favorite,color: Color(0xff841f32),):Icon(Icons.favorite_border_outlined,color: Color(0xff841f32),),
                                  Icon(Icons.delete_rounded,color: Color(0xff85909e),),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    )),
              ],
            ),
          );
  }
}