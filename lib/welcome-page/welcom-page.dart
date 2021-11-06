import 'package:api_project/data/MyProvider.dart';
import 'package:api_project/welcome-page/image-slider/image-slider-item.dart';
import 'package:bubble/bubble.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
      body: Consumer<HomeProvider>(
          builder: (context, provider, x) {
        return Column(
        children: [
          Expanded(
            flex:3,
            child: Container(
              child: Column(
                children: [

                  Container(
                    margin: EdgeInsets.fromLTRB(5, 12, 5, 5),
                    child: ListView.builder(
                     itemCount: provider.allCategories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i){
                        return GestureDetector(
                          onTap: (){
                            provider.getCategoryProducts(provider.allCategories[i]);
                          },
                          child:Container(
                            margin: EdgeInsets.all(7),
                            child: Text(
                              "${provider.allCategories[i]}",
                              style: GoogleFonts.comfortaa(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );},
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
                  child:ListView.builder(
                    itemCount: provider.categoryProducts.length,
                    itemBuilder: (context,i){return ImageSliderItem(imageUrl:provider.categoryProducts[i].image ,productDescription:provider.categoryProducts[i].description ,productName:provider.categoryProducts[i].title ,productPrice:provider.categoryProducts[i].price.toString() ) ;},),)
                    ),
        ],
      );},
    ));
  }
}