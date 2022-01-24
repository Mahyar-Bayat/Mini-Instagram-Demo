import 'package:flutter/material.dart';
import 'package:mini_insta_demo/pages/list_stories.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final post = Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.goodcountry.org/images/_square/Hassan-Rohani.jpg'))),
                )
              ],
            ),
            Row(
              children: const [Icon(Icons.more_vert_rounded)],
            )
          ],
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                child: ListStories(),
                height: screenSize.height * 0.15,
              )
            : post;
      },
    );
  }
}
