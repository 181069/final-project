import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ImageSliderItem extends StatelessWidget {
  String imageUrl;
  String productName;
  String productDescription;
  String productPrice;

  ImageSliderItem({@required this.imageUrl, @required this.productName, @required this.productDescription ,@required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 250,
      child:Stack(
        alignment: Alignment.bottomLeft,
        fit:StackFit.loose,
        children: [
          SizedBox(
            height: 400,
            width: 250,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset('$imageUrl',fit: BoxFit.cover),
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
                    Text("$productName",style: GoogleFonts.comfortaa(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color:Colors.white ,
                    ),),
                    Text("$productDescription",style: GoogleFonts.comfortaa(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color:Colors.white ,
                    ),),
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
                  Text("\$120",style: GoogleFonts.comfortaa( fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color:Colors.white ),),
                  Container(
                    margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    alignment: Alignment.bottomLeft,child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 33,
                  ),)
                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
