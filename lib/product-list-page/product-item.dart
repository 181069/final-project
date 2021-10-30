import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProductItem extends StatelessWidget {
  String imageUrl;
  String productName;
  String productDescription;
  String productPrice;

  ProductItem({@required this.imageUrl, @required this.productName, @required this.productDescription ,@required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
      child:
      Stack(
        children: [
          SizedBox(
            height:340,
            width:200 ,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20) ,

              ),
            ),
          ),
          SizedBox(
            height:180,
            width:200 ,
            child: Card(
              color: Color(0xfffcf1e9),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Image.asset('$imageUrl',fit: BoxFit.cover,),
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20) ,

              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$productName",style: GoogleFonts.comfortaa(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,

                ),),
                Text("$productDescription",style: GoogleFonts.comfortaa(
                  fontSize: 10,
                  color: Colors.grey,
                ),),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 10, 0, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$$productPrice",style: GoogleFonts.comfortaa(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,

                        color: Colors.amberAccent,
                      ),),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 0, 3, 0),
                        alignment: Alignment.bottomRight,
                        child: Icon(

                          Icons.add_shopping_cart_outlined,
                          color: Colors.amber,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 15,
              right: 15,
              child: Icon(Icons.favorite_border_outlined,color: Colors.white,size: 29,))
        ],
      ),
    );
  }
}

