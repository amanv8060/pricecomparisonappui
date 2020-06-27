import 'package:flutter/material.dart';
import 'package:pricecomparisonappui/widgets/boughtOrders.dart';
import 'package:pricecomparisonappui/widgets/customProduct.dart';
import 'package:pricecomparisonappui/widgets/productData.dart';
import 'package:pricecomparisonappui/widgets/searchField.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> _products = recents;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black12,
          child: ListView(

            padding: EdgeInsets.fromLTRB(10, 20, 10, 15),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("What Would",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
                  Text("You like to Order?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),)
                ],
              ),
              SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Frequently Bought Items",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)
                ],
              ),
              SizedBox(height: 15,),
              SearchField(),

              Container(
                height: MediaQuery.of(context).size.height*0.7,
                child: ListView.builder(
                    itemCount: _products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: BoughtOrders(
                            id: _products[index].id,
                            imagePath: _products[index].imagePath,
                            name: _products[index].name,
                            LowestPrice: _products[index].LowestPrice,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CustomProduct(id: _products[index].id)));
                        },
                      );
                    },
                ),
              )
            ],
          ),
        )
    );
  }
}