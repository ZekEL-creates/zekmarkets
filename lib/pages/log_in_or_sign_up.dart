import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';

import 'package:marketstreetapp/pages/login_view.dart';
import 'package:marketstreetapp/pages/sign_up_view.dart';
import 'package:marketstreetapp/widgets/text_button_registration.dart';

class LogInOrSignUp extends StatefulWidget {
  final Pages currentPage;
  const LogInOrSignUp({super.key, required this.currentPage});

  @override
  State<LogInOrSignUp> createState() => _LogInOrSignUpState();
}

class _LogInOrSignUpState extends State<LogInOrSignUp>
    with SingleTickerProviderStateMixin {
  late Pages currentPage;
  late TabController _tabController;

  @override
  void initState() {
    currentPage = widget.currentPage;
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.currentPage.index,
    );

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                TabBar(
                  controller: _tabController,
                  indicator: UnderlineTabIndicator(
                    insets: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 2.7,
                    ),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Appcolors.bluegradientLight,
                    ),
                  ),
                  indicatorWeight: 0.1,
                  tabs: [
                    Tab(
                      child: TextButtonRegistration(
                        page: 'Login',
                        pageName: Pages.values[_tabController.index],
                        currentPage: currentPage,
                        onPressed: () {
                          _tabController.animateTo(0);
                        },
                      ),
                    ),
                    Tab(
                      child: TextButtonRegistration(
                        pageName: Pages.values[_tabController.index],
                        page: 'Sign up',
                        currentPage: currentPage,
                        onPressed: () {
                          _tabController.animateTo(1);
                        },
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [LoginView(), SignUpView()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List pages = [LoginView(), SignUpView()];

enum Pages { login, signup }

// class NavigateLoginOrSignUp extends StatelessWidget {
//   final Pages currentPage;
//   final ValueChanged<Pages> onTap;

//   const NavigateLoginOrSignUp({
//     super.key,
//     required this.currentPage,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             TextButtonRegistration(
//               page: 'Login',
//               pageName: Pages.login,
//               currentPage: currentPage,
//               onPressed: () {
//                 onTap(Pages.login);
//               },
//             ),
//             TextButtonRegistration(
//               pageName: Pages.signup,
//               page: 'Sign up',
//               currentPage: currentPage,
//               onPressed: () {
//                 onTap(Pages.signup);
//               },
//             ),
//           ],
//         ),
//         Stack(
//           children: [
//             Divider(height: 10),
//             Positioned(
//               right: 0,
//               child: SizedBox(
//                 width: MediaQuery.of(context).size.width / 2,
//                 child: Divider(color: Appcolors.bluegradientLight, height: 10),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 45, left: 25, right: 25),
//           child: Column(
//             children: [
//               NavigateLoginOrSignUp(
//                 currentPage: currentPage,
//                 onTap: (value) {
//                   setState(() {
//                     currentPage = value;
//                   });
//                 },
//               ),
//               pages[currentPage.index],
//             ],
//           ),
//         ),
//       ),
//     );
