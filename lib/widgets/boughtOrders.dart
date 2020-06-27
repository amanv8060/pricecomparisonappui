import 'package:flutter/material.dart';

class BoughtOrders extends StatefulWidget {
  final int id;
  final String name;
  final String imagePath;
  final String LowestPrice;

  BoughtOrders({this.id,this.name,this.imagePath,this.LowestPrice});
  @override
  _BoughtOrdersState createState() => _BoughtOrdersState();
}

class _BoughtOrdersState extends State<BoughtOrders> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width - 50,
          decoration: BoxDecoration(
            color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          top: 140,
          left: 0,
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width - 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.black12],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Text(
            widget.name,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
            bottom: 2,
            right: 10,
            child: Column(
              children: <Widget>[
                Text(
                  "Lowest Price",
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 20,),
                ),
                Text(
                  widget.LowestPrice,
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ))
      ],
    );
  }
}
