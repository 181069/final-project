import 'package:api_project/welcome-page/image-slider/image-slider-item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:api_project/generated/assets.dart';

class ImageSlider extends StatelessWidget {
  @override
  String Cream = 'assets/images/cream.jpeg';
  String ShampooImage = 'assets/images/shampooImage.png';
  String orangeImage = './assets/images/orange.jpeg';
  String lemmonImage = './assets/images/lemmon.jpeg';
  String image5='./assets/images/1.jpeg';
  String image6='./assets/images/3.jpeg';
  String image7='./assets/images/7.jpeg';
  String image8='./assets/images/6.jpeg';
  String image9='./assets/images/4.jpeg';
  String image10='./assets/images/5.jpg';
  String image11='./assets/images/2.jpg';

  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        //product headline
        // Container(
        //   alignment: Alignment.center,
        //   margin: EdgeInsets.fromLTRB(15, 15, 0, 18),
        //   child: Text(
        //     "Products",
        //     style: GoogleFonts.comfortaa(
        //       fontSize: 18,
        //       fontWeight: FontWeight.w700,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImageSliderItem(
                imageUrl: '$orangeImage',
                productName: 'Orange',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$ShampooImage',
                productName: 'Shampoo',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$lemmonImage',
                productName: 'lemmon',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$Cream',
                productName: 'Cream',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$image5',
                productName: 'Cream',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$image6',
                productName: 'Cream',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$image7',
                productName: 'Cream',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$image8',
                productName: 'Cream',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$image9',
                productName: 'Cream',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$image10',
                productName: 'Cream',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              ImageSliderItem(
                imageUrl: '$image11',
                productName: 'Cream',
                productDescription: 'fatima-imad\nHasanat',
                productPrice: "120\$",
              ),
              SizedBox(
                height: 400,
                width: 250,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  fit: StackFit.loose,
                  children: [
                    SizedBox(
                      height: 400,
                      width: 250,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset('./assets/images/lemmon.jpeg',
                            fit: BoxFit.cover),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 20,
                        shadowColor: Color(0xFFe4bab4),
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    Positioned(
                        top: 26,
                        left: 30,
                        child: SizedBox(
                          height: 400,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "shampoo",
                                style: GoogleFonts.comfortaa(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "proovidind-lost"
                                "\nlasting",
                                style: GoogleFonts.comfortaa(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                      left: 20,
                      bottom: 20,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Text(
                              " \$120",
                              style: GoogleFonts.comfortaa(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                              alignment: Alignment.bottomLeft,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 33,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
