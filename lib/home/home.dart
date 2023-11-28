import 'package:duoclone/home/appbar_home_screen.dart';
import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('Home'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: AppBarHomeScreen(),
      ),
      body: navigationShell,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 4),
        decoration: const BoxDecoration(
            border: BorderDirectional(
                top: BorderSide(color: Color.fromRGBO(227, 227, 227, 1)))),
        child: NavigationBar(
          indicatorColor: Colors.white,
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          destinations: <NavigationDestination>[
            NavigationDestination(
                icon: MySpriteButton(
                  spriteDetails: MySprites.homeTab,
                  selected: navigationShell.currentIndex == 0,
                  onPressed: () => navigationShell.goBranch(0),
                ),
                label: ''),
            NavigationDestination(
                icon: MySpriteButton(
                  spriteDetails: MySprites.language,
                  selected: navigationShell.currentIndex == 1,
                  onPressed: () => navigationShell.goBranch(1),
                ),
                label: ''),
            NavigationDestination(
                icon: MySpriteButton(
                  spriteDetails: MySprites.chest,
                  selected: navigationShell.currentIndex == 2,
                  onPressed: () => navigationShell.goBranch(2),
                ),
                label: ''),
            NavigationDestination(
                icon: MySpriteButton(
                  spriteDetails: MySprites.dubmbell,
                  selected: navigationShell.currentIndex == 3,
                  onPressed: () => navigationShell.goBranch(3),
                ),
                label: ''),
            NavigationDestination(
                icon: MySpriteButton(
                  spriteDetails: MySprites.badge,
                  selected: navigationShell.currentIndex == 4,
                  onPressed: () => navigationShell.goBranch(4),
                ),
                label: ''),
            NavigationDestination(
                icon: MySpriteButton(
                  spriteDetails: MySprites.options,
                  selected: navigationShell.currentIndex == 5,
                  options: true,
                ),
                label: ''),
          ],
          selectedIndex: navigationShell.currentIndex,
          // onDestinationSelected: navigationShell.goBranch,
        ),
      ),
    );
  }
}





// import 'package:duoclone/home/appbar_home_screen.dart';
// import 'package:duoclone/home/tabs/home.dart';
// import 'package:duoclone/home/widgets/sprite_button_label.dart';
// import 'package:duoclone/utils/sprites.dart';
// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _currentIndex = 0;
//   final List<Widget> screens = const [
//     HomeTab(),
//     Placeholder(),
//     Placeholder(),
//     Placeholder(),
//     Placeholder(),
//   ];
//   final PageStorageBucket _bucket = PageStorageBucket();
//   Widget currentScreen = const HomeTab();
// final StatefulNavigationShell navigationShell;
//   @override
//   Widget build(BuildContext context) {
//     const double iconSize = 29;

//     return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(45),
//           child: AppBarHomeScreen(),
//         ),
//         body: PageStorage(
//           bucket: _bucket,
//           child: currentScreen,
//         ),
//         bottomNavigationBar: Container(
//           padding: const EdgeInsets.only(top: 4),
//           decoration: const BoxDecoration(
//               border: BorderDirectional(
//                   top: BorderSide(color: Color.fromRGBO(227, 227, 227, 1)))),
//           child: BottomNavigationBar(
//             enableFeedback: false,
//             type: BottomNavigationBarType.fixed,
//             currentIndex: _currentIndex,
//             backgroundColor: Colors.white,
//             iconSize: iconSize,
//             onTap: (int index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             items: [
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: MySpriteButton(
//                   spriteDetails: MySprites.homeTab,
//                   selected: _currentIndex == 0,
//                   onPressed: () {
//                     setState(() {
//                       _currentIndex = 0;
//                       currentScreen = const HomeTab();
//                     });
//                   },
//                 ),
//               ),
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: MySpriteButton(
//                   spriteDetails: MySprites.language,
//                   selected: _currentIndex == 1,
//                   onPressed: () {
//                     setState(() {
//                       _currentIndex = 1;
//                       currentScreen = const Placeholder();
//                     });
//                   },
//                 ),
//               ),
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: MySpriteButton(
//                   spriteDetails: MySprites.chest,
//                   selected: _currentIndex == 2,
//                   onPressed: () {
//                     setState(() {
//                       _currentIndex = 2;
//                       currentScreen = const Placeholder();
//                     });
//                   },
//                 ),
//               ),
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: MySpriteButton(
//                   spriteDetails: MySprites.dubmbell,
//                   selected: _currentIndex == 3,
//                   onPressed: () {
//                     setState(() {
//                       _currentIndex = 3;
//                       currentScreen = const Placeholder();
//                     });
//                   },
//                 ),
//               ),
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: MySpriteButton(
//                   spriteDetails: MySprites.badge,
//                   selected: _currentIndex == 4,
//                   onPressed: () {
//                     setState(() {
//                       _currentIndex = 4;
//                       currentScreen = const Placeholder();
//                     });
//                   },
//                 ),
//               ),
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: MySpriteButton(
//                   spriteDetails: MySprites.options,
//                   selected: _currentIndex == 5,
//                   onPressed: () {
//                     setState(() {
//                       _currentIndex = 5;
//                       currentScreen = const Placeholder();
//                     });
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
