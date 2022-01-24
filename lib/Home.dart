import 'package:flutter/material.dart';
import 'package:mini_insta_demo/pages/account_page.dart';
import 'package:mini_insta_demo/pages/favorite_page.dart';
import 'package:mini_insta_demo/pages/home_page.dart';
import 'package:mini_insta_demo/pages/plus_page.dart';
import 'package:mini_insta_demo/pages/search_page.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  String CurrentPage = 'home';

  final Map<String, Widget> pages = <String, Widget>{
    'home': const home_page(),
    'search': const search_page(),
    'plus': const plus_page(),
    'favorite': const favorite_page(),
    'account': const account_page(),
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
        padding: EdgeInsets.only(right: 15),
        child: Icon(
          Icons.send,
          color: Colors.black,
        ),
      )
    ],
  );

  change_page(String namePage) {
    setState(() {
      CurrentPage = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: pages[CurrentPage],
      bottomNavigationBar: Container(
          height: 60,
          color: Colors.white,
          child: BottomAppBar(
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    icon: const Icon(Icons.home, color: Colors.black),
                    onPressed: () {
                      change_page('home');
                    }),
                IconButton(
                    icon: const Icon(Icons.search, color: Colors.black),
                    onPressed: () {
                      change_page('search');
                    }),
                IconButton(
                    icon: const Icon(Icons.add_box, color: Colors.black),
                    onPressed: () {
                      change_page('plus');
                    }),
                IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.black),
                    onPressed: () {
                      change_page('favorite');
                    }),
                IconButton(
                    icon: const Icon(Icons.account_circle, color: Colors.black),
                    onPressed: () {
                      change_page('account');
                    }),
              ],
            ),
          )),
    );
  }
}

// class HomePages extends StatefulWidget {
//   const HomePages({Key? key}) : super(key: key);
//
//   @override
//   _HomePagesState createState() => _HomePagesState();
// }
//
// class _HomePagesState extends State<HomePages> {
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
