import 'package:api_project/data/MyProvider.dart';
import 'package:api_project/product-list-page/product-item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  margin:EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: provider.allCategories.length,
                      itemBuilder:(context,i){return  GestureDetector(
                        onTap: (){                          
                        provider.getCategoryProducts(provider.allCategories[i]);
                                      
                        },
                        child: Container(
                          margin: EdgeInsets.all(7),
                          child: Text(
                            "${provider.allCategories[i]}  ",
                            style: GoogleFonts.comfortaa(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );}
                    ) ,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 11,
            child: Container(
              // padding: EdgeInsets.fromLTRB(5,8, 5, 5),
              child: ListView.builder(
                itemCount:provider.categoryProducts.length ,
                itemBuilder:(context, i){
                  return ProductItem(imageUrl: provider.categoryProducts[i].image, productName: provider.categoryProducts[i].title, productDescription: provider.categoryProducts[i].description, productPrice: provider.categoryProducts[i].price.toString());
                },
                ),

            ),
          ),
        ],
      );

          }),
    );
  }
}