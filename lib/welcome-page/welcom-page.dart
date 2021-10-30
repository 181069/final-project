import 'package:api_project/data/MyProvider.dart';
import 'package:api_project/product-list-page/product-list.dart';
import 'package:api_project/welcome-page/image-slider/image-slider.dart';
import 'package:bubble/bubble.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                provider.allProducts == null
                    ? Container(
                        color: Colors.white,
                        height: 200,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    :               
               Expanded(
			   flex:2 ,child:Container(
                  height: 70,
                  child: provider.allCategories == null
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: provider.allCategories
                                .map((e) => GestureDetector(
                                      onTap: () {
                                        provider.getCategoryProducts(e);
                                      },
                                      child:Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                 e[0].toUpperCase() + e.substring(1),,
                                style: GoogleFonts.comfortaa(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ))
                                .toList(),
                          ),
                        ),
                ),),
                Expanded(
                    flex:9,
                    child: provider.categoryProducts == null
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container(
                            margin: EdgeInsets.all(10),
                            child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10),
                                itemCount: provider.categoryProducts.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      provider.getSpecificProduct(
                                      provider.categoryProducts[index].id);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return ProductDetails();
                                      }));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: CachedNetworkImage(
                                              imageUrl: provider
                                                  .categoryProducts[index]
                                                  .image,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(provider
                                                  .categoryProducts[index]
                                                  .title),
                                              Row(
                                                children: [
                                                  Text('Price: ' +
                                                      provider
                                                          .categoryProducts[
                                                              index]
                                                          .price
                                                          .toString() +
                                                      '\$'),
                                                  Spacer(),
                                                  IconButton(
                                                      onPressed: () {
                                                        provider.addToFavourite(
                                                            provider.categoryProducts[
                                                                index]);
                                                      },
                                                      icon: Icon(
                                                        Icons.favorite,
                                                        color: provider
                                                                    .favouriteProducts
                                                                    ?.any((element) =>
                                                                        element
                                                                            .id ==
                                                                        provider
                                                                            .categoryProducts[index]
                                                                            .id) ??
                                                                false
                                                            ? Colors.red
                                                            : Colors.black,
                                                      ))
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ))
              ],
               );
          },
               )

    );
  }
}