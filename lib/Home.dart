import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mini_insta_demo/pages/account_page.dart';
import 'package:mini_insta_demo/pages/favorite_page.dart';
import 'package:mini_insta_demo/pages/home_page.dart';
import 'package:mini_insta_demo/pages/plus_page.dart';
import 'package:mini_insta_demo/pages/search_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String currentPage = 'home';

  final Map<String, Widget> pages = <String, Widget>{
    'home': HomePage(),
    'search': const SearchPage(),
    'plus': const PlusPage(),
    'favorite': const FavoritePage(),
    'account': const AccountPage(),
  };

  final appBar = AppBar(
    backgroundColor: const Color(0xfff8f8f8),
    elevation: 3,
    centerTitle: true,
    title: SizedBox(
      height: 100,
      child: Image.asset('assets/images/1.png'),
    ),
    leading: const Icon(
      Icons.camera_alt,
      color: Colors.black,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: Icon(
          FontAwesomeIcons.solidPaperPlane,
          color: Colors.black,
        ),
      )
    ],
  );

  changePage(String namePage) {
    setState(() {
      currentPage = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: pages[currentPage],
      bottomNavigationBar: Container(
          height: 60,
          color: Colors.white,
          child: BottomAppBar(
            elevation: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    icon: const Icon(Icons.home, color: Colors.black),
                    onPressed: () {
                      changePage('home');
                    }),
                IconButton(
                    icon: const Icon(Icons.search, color: Colors.black),
                    onPressed: () {
                      changePage('search');
                    }),
                IconButton(
                    icon: const Icon(Icons.add_box, color: Colors.black),
                    onPressed: () {
                      changePage('plus');
                    }),
                IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.black),
                    onPressed: () {
                      changePage('favorite');
                    }),
                IconButton(
                    icon: const Icon(Icons.account_circle, color: Colors.black),
                    onPressed: () {
                      changePage('account');
                    }),
              ],
            ),
          )),
    );
  }
}



// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int CurrentPageIndex = 0;
//
//   final List pages = [
//     home_page(),
//     search_page(),
//     plus_page(),
//     favorite_page(),
//     account_page(),
//   ];
//
//   final appBar = AppBar(
//     backgroundColor: const Color(0xfff8f8f8),
//     elevation: 3,
//     centerTitle: true,
//     title: SizedBox(
//       height: 100,
//       child: Image.asset('assets/images/1.png'),
//     ),
//     leading: const Icon(
//       Icons.camera_alt,
//       color: Colors.black,
//     ),
//     actions: const [
//       Padding(
//         padding: EdgeInsets.only(right: 15),
//         child: Icon(
//           Icons.send,
//           color: Colors.black,
//         ),
//       )
//     ],
//   );
//
//   change_page(int indexPage) {
//     setState(() {
//       CurrentPageIndex = indexPage;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBar,
//       body: pages[CurrentPageIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem> [
//
//           BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black45,),label: 'Home',backgroundColor: Colors.blueAccent),
//           BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black45,),label:'Search'),
//           BottomNavigationBarItem(icon: Icon(Icons.add_box, color: Colors.black45,),label:'Plus'),
//           // BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.black45,),label:'Favorite'),
//           // BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.black45,),label:'Profile'),
//         ],
//         onTap: change_page,
//       )
//     );
//   }
// }
