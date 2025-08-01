import 'package:marketstreetapp/items/item.dart';

List<String> images = [
  'assets/images/onboarding1.png',
  'assets/images/onboarding2.png',
  'assets/images/onboarding3.png',
];
List<String> header = [
  'Buy Securely using Escrow',
  'Nationwide Delivery',
  'Get your money Value',
];
List<String> writeup = [
  'Go ye therefore and make disciples of all nations, baptising them in the name of God the father the son and of the holyghost, teaching them to obey all that I have commanded and lo I am with you till the end of days',
  'For God so loved the world that he gave his only begotten son, that whosoever believes in him shall not perish but have eternal life',
  'For those who know howto bow, will mount up with wings as eagles, they will run and not be weary, they will run and not faint',
];

List<String> itemImage = [
  'assets/images/bag1.jpg',
  'assets/images/bag2.jpg',
  'assets/images/bag3.jpg',
  'assets/images/Series 7.png',
];

List<String> names = [
  'Mulberry Clutch',
  'Gucci Black',
  'Van Heusen',
  'Kate Spade',
];
List<String> editions = ['Series 7', 'Series 4', 'All Series', 'Pro Series'];

List<int> prices = [5000, 6000, 8000, 2300];

List<Item> items = [
  Item(
    name: 'Mulberry Clutch',
    image: 'assets/images/bag1.jpg',
    edition: 'Series 7',
    price: 5000,
  ),
  Item(
    name: 'Gucci Black',
    image: 'assets/images/bag2.jpg',
    edition: 'Series 4',
    price: 6000,
  ),
  Item(
    name: 'Van Heusen',
    image: 'assets/images/bag3.jpg',
    edition: 'All Series',
    price: 8000,
  ),
  Item(
    name: 'Kate Spade',
    image: 'assets/images/Series 7.png',
    edition: 'Pro Series',
    price: 2300,
  ),
];

List<Item> cart = [];
List<Item> favorites = [];
