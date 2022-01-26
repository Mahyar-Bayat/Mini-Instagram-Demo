import 'package:flutter/material.dart';
import 'package:mini_insta_demo/pages/list_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var post = Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.goodcountry.org/images/_square/Hassan-Rohani.jpg'))),
                ),
                const Text(
                  'حسن روحانی',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Vazir'),
                )
              ],
            ),
            Row(
              children: const [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.more_vert_rounded,
                      color: Colors.black,
                    ))
              ],
            )
          ],
        ),
      ),
      Row(
        children: [
          Expanded(
              child: Image.network(
            'https://i.guim.co.uk/img/media/12e39a69ee074525ad3c847095462475d56618b9/0_0_3760_2256/master/3760.jpg?width=700&quality=85&auto=format&fit=max&s=8ec04f0e066f38926f828e5c51583354',
            fit: BoxFit.cover,
          ))
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      print('pressed');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {
                      print('pressed');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.comment,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {
                      print('pressed');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.paperPlane,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 199.0),
                  child: IconButton(
                      onPressed: () {
                        print('pressed');
                      },
                      icon: const Icon(
                        FontAwesomeIcons.bookmark,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 120),
        child: Text('علی و تقی و نقی و 50k دیگر پسندیده اند.',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.goodcountry.org/images/_square/Hassan-Rohani.jpg')),
              ),
            ),
            const Expanded(
                child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'اینجا بنویسید.',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic)),
            )),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 199),
        child: Text(
          '1 روز قبل',
          style: TextStyle(color: Colors.grey),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                child: ListStories(),
                height: screenSize.height * 0.20,
              )
            : post;
      },
    );
  }
}
