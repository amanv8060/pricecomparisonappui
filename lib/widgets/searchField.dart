import 'package:flutter/material.dart';
import 'package:pricecomparisonappui/widgets/productData.dart';

import 'customProduct.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      elevation: 6,
      child: ListTile(
        title: Text("Search any Product"),
        trailing: Icon(Icons.search),

        onTap:()=> showSearch(context: context, delegate:SearchProducts() ),
      )
    );
  }
}

class SearchProducts extends SearchDelegate<String>{
  List <Product> _products=products;
  List <Product> _recents =recents;
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(
        icon: Icon(Icons.clear,),
    onPressed:(){
          query="";
    }
    )];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress:transitionAnimation,
    ),
      onPressed: (){
      close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
//    return MaterialPageRoute(builder: (context)=>CustomProduct(id:));
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final suggestionsList=query.isEmpty?_recents:_products.where((p)=>p.name.toLowerCase().contains(query.toLowerCase())).toList();
    return ListView.builder(itemBuilder:(context,index)=>ListTile(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CustomProduct(id:suggestionsList[index].id)));
      },
      leading: Icon(Icons.shopping_basket),
      title: Text(suggestionsList[index].name),
      subtitle: Text("Lowest Price : ${suggestionsList[index].LowestPrice}"),
    ),
        itemCount: suggestionsList.length,
    );
  }

}