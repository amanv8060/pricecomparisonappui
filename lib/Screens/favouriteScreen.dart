import 'package:flutter/material.dart';
import 'package:pricecomparisonappui/widgets/boughtOrders.dart';
import 'package:pricecomparisonappui/widgets/customProduct.dart';
import 'package:pricecomparisonappui/widgets/productData.dart';

class FavouriteScreen extends StatefulWidget{
  @override
  _FavouriteScreenState createState()=> _FavouriteScreenState();
}

class _FavouriteScreenState  extends State<FavouriteScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          margin: EdgeInsets.only(top:25,left:10,right:10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Favourites OnWatch",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              Container(
                height: MediaQuery.of(context).size.height*0.9,
                child: ListView.builder(
                  itemCount: favourite_products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: BoughtOrders(
                          id: products[favourite_products[index]].id,
                          imagePath: products[favourite_products[index]].imagePath,
                          name: products[favourite_products[index]].name,
                          LowestPrice: products[favourite_products[index]].LowestPrice,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CustomProduct(id: products[favourite_products[index]].id)));
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}