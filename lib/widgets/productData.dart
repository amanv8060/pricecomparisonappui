class Product{
  final int id;
  final String name;
  final String imagePath;
  final String LowestPrice;
  final String amzprice;
  final String flpprice;
  final String snpdprice;

  Product({this.id,this.name,this.imagePath="lib/assets/noimage.jpg",this.LowestPrice,this.amzprice,this.flpprice,this.snpdprice});
}

final products=[
  Product(
    id:0,
    name: "Calculator",
    imagePath: "lib/assets/calculator.png",
    flpprice: "999",
    LowestPrice: "798",
    amzprice: "1050",
    snpdprice:"798"
  ),
  Product(
      id:1,
      name: "Mask",
      imagePath: "lib/assets/mask.png",
      flpprice:"200",
      LowestPrice: "200",
      amzprice: "250",
      snpdprice:"240"
  ),
  Product(
      id:2,
      name: "Sanitizer",
      imagePath: "lib/assets/sanitizer.png",
      flpprice: "250",
      LowestPrice:"250" ,
      amzprice: "250",
      snpdprice:"250"
  ),
  Product(
      id:3,
      name: "Hand GLoves",
      flpprice: "20",
      LowestPrice:"20" ,
      amzprice: "30",
      snpdprice:"25"
  ),

];

final recents = [
  Product(
      id:0,
      name: "Calculator",
      imagePath: "lib/assets/calculator.png",
      flpprice: "999",
      LowestPrice: "798",
      amzprice: "1050",
      snpdprice:"798"
  ),
  Product(
      id:1,
      name: "Mask",
      imagePath: "lib/assets/mask.png",
      flpprice:"200",
      LowestPrice: "200",
      amzprice: "250",
      snpdprice:"240"
  ),
  Product(
      id:2,
      name: "Sanitizer",
      imagePath: "lib/assets/sanitizer.png",
      flpprice: "250",
      LowestPrice:"250" ,
      amzprice: "250",
      snpdprice:"250"
  ),];

List<int> favourite_products=[
1,2];
