import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pricecomparisonappui/widgets/productData.dart';

class CustomProduct extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final int id;

  CustomProduct({this.id});

  List<Product> _products = products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(_products[id].name),
      ),
      body: Container(color: Colors.black12,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
//                  border: Border.all(color: Colors.green, width: 10,),
                      image: DecorationImage(
                          image: AssetImage(_products[id].imagePath),
                          fit: BoxFit.fill)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                      EdgeInsets.only(left: 10, top: 15, bottom: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _products[id].name,
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Lowest Price            ",
                              style: TextStyle(fontSize: 18)),
                          Text(_products[id].LowestPrice,
                              style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Text(
                              "Tap me to Buy on Flipkart For    ",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.deepPurple),
                            ),
                            onTap: () =>
                                _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Text("Link Pressed"),
                            )),
                          ),
                          Text(_products[id].flpprice,
                              style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Text("Tap me to Buy on Amazon For     ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.deepPurple)),
                            onTap: () =>
                                _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Text("Link Pressed"),
                            )),
                          ),
                          Text(_products[id].amzprice,
                              style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Text("Tap me to Buy on Snapdeal For   ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.deepPurple)),
                            onTap: () =>
                                _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Text("Link Pressed"),
                            )),
                          ),
                          Text(_products[id].snpdprice,
                              style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.star_border,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    "Put it on Watch",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                    if(favourite_products.contains(id)){
                      favourite_products.remove(id);
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text("Product removed from Onwatch List"),
                  )
                    );
                  }
                    else{
                      favourite_products.add(id);
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text("Product added in Onwatch List"),
                      )
                      );
                    }
                  }
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
