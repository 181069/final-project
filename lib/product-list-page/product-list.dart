import 'dart:ui';

import 'package:api_project/product-list-page/product-item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProductList  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
    return Container(
      margin: EdgeInsets.fromLTRB(5, 12, 10, 10),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .62,
        children: [

          ProductItem(imageUrl: lemmonImage,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: orangeImage,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: ShampooImage,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: Cream,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: image5,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: image6,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: image7,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: image8,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: image9,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: image10,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),
          ProductItem(imageUrl: image11,productName: "shampoo",productDescription: "nice shampoo",productPrice: "120",),

        ],
      ),
    );

  }
}
