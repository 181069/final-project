
import 'dart:html';

import 'package:api_project/product-list-page/products-page.dart';
import 'package:api_project/welcome-page/welcom-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card-page/card-item.dart';
import 'card-page/card-page.dart';
import 'data/MyProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<HomeProvider>(
      create:(_) =>HomeProvider() ,
   child:MaterialApp(
      home:WelcomePage() )));
}
