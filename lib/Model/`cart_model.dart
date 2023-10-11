// ignore: file_names
class Cart {
  // This is the strings to use the product id for the show the show the index,
  //The int id use is for the primary key
  //In case we use the api to show the screen the personel id 
  late final int? id;
  final String? productId;
  final String? productName;
  final int? intialPrice;
  final int? productPrice;
  final int? quantity;
  final String? unitTag;
  final String? image;
  //This is all the index we need.
  Cart(
    //This is the constructor mention all the things mention in constructor beacaus to map the costructor
      {required this.id,
      required this.productId,
      required this.productName,
      required this.intialPrice,
      required this.productPrice,
      required this.quantity,
      required this.unitTag,
      required this.image});
  Cart.fromMap(Map<dynamic, dynamic> res, this.intialPrice)
      : id = res['id'],
        productId = res["productId"],
        productName = res["productName"],
        productPrice = res["productPrice"],
        quantity = res["quantity"],
        unitTag = res["UnitTag"],
        image = res["image"];
// This is the tomap 
  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'productPrice': productPrice,
      'quantity': quantity,
      'unitTag': unitTag,
      'image': image
    };
  }
}
