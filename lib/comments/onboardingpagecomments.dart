// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text('Skip', style: TextStyle(color: Appcolors.text1)),
//               ),
//             ),

//             SizedBox(height: 50),

//             ProductCarousel(),

//             Spacer(),

//             Container(
//               width: MediaQuery.of(context).size.width,
//               padding: EdgeInsets.symmetric(vertical: 10),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Appcolors.bluegradientDark,
//                     Appcolors.bluegradientLight,
//                   ],
//                   begin: Alignment.bottomLeft,
//                   end: Alignment.topRight,
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextButton(
//                 onPressed: () {},
//                 child: Center(
//                   child: Text(
//                     'Continue',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProductCarousel extends StatefulWidget {
//   const ProductCarousel({super.key});

//   @override
//   State<ProductCarousel> createState() => _ProductCarouselState();
// }

// class _ProductCarouselState extends State<ProductCarousel> {
//   final PageController _controller = PageController();
//   final List<String> img = [
//     'assets/images/onboarding1.png',
//     'assets/images/onboarding2.png',
//     'assets/images/onboarding3.png',
//   ];
//   final List<String> header = [
//     'Buy Securely using Escrow',
//     'Nationwide Delivery',
//     'Get your money Value',
//   ];

//   final List<String> writeup = [
//     'Go ye therefore and make disciples of all nations, baptising them in the name of God the father the son and of the holyghost, teaching them to obey all that I have commanded and lo I am with you till the end of days',
//     'For God so loved the world that he gave his only begotten son, that whosoever believes in him shall not perish but have eternal life',
//     'For those who know howto bow, will mount up with wings as eagles, they will run and not be weary, they will run and not faint',
//   ];
//   var currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Buy Securely using Escrow',
//           style: TextStyle(
//             fontWeight: FontWeight.w900,
//             fontSize: 56.73,
//             height: 1.03,
//           ),
//         ),
//         SizedBox(height: 10),
//         SizedBox(
//           width: MediaQuery.of(context).size.width / 1.35,
//           child: Text(
//             'Go ye therefore and make disciples of all nations, baptising them in the name of God the father the son and of the holyghost, teaching them to obey all that I have commanded and lo I am with you till the end of days',
//             style: TextStyle(color: Color(0xFF4F4F4F)),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.zero,
//           padding: EdgeInsets.zero,
//           width: double.infinity,
//           height: 301,
//           child: PageView.builder(
//             controller: _controller,
//             itemCount: img.length,
//             onPageChanged: (index) {
//               setState(() {
//                 currentIndex = index;
//               });
//             },
//             itemBuilder: (context, index) {
//               return Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(image: AssetImage(img[index])),
//                 ),
//               );
//             },
//           ),
//         ),

//         Center(
//           child: Row(
//             mainAxisSize: MainAxisSize.min,

//             children: List.generate(img.length, (index) {
//               return _generateDots(index);
//             }),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _generateDots(index) {
//     return Container(
//       height: 6,
//       width: 6,
//       margin: EdgeInsets.symmetric(horizontal: 2.8),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: currentIndex == index
//             ? Appcolors.bluegradientLight
//             : Colors.grey,
//       ),
//     );
//   }
// }
