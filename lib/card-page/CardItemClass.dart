
import 'package:flutter/material.dart';

class CardItemData{
String imageUrl;
  String productName;
  String productDescription;
  String productPrice;
  bool productIsFaviorite; 
 CardItemData({@required this.imageUrl, @required this.productName, @required this.productDescription ,@required this.productPrice,this.productIsFaviorite});

}

