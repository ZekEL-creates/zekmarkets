class Item {
  final String name;
  final String image;
  final String edition;

  Item({required this.name, required this.image, required this.edition});
  String get itemName => name;
  String get itemImage => image;
  String get itemEdition => edition;
}
