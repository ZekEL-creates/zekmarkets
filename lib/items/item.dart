class Item {
  final String name;
  final String image;
  final String edition;
  final int price;
  final int? quantity;

  Item({
    required this.name,
    required this.image,
    required this.edition,
    required this.price,
    this.quantity = 1,
  });
  String get itemName => name;
  String get itemImage => image;
  String get itemEdition => edition;
}
