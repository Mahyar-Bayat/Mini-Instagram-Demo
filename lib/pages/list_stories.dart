import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {
  ListStories({Key? key}) : super(key: key);
  final Row topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      const Text(
        'استوری ها',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: const <Widget>[
          Text(
            'مشاهده همه',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          IconButton(onPressed: null , icon: Icon(Icons.play_arrow ,color: Colors.black,))
        ],
      )
    ],
  );
  final stories = Expanded(
    child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (contex, index) {
              return Stack(
                // alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    width: 67,
                    height: 67,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://www.goodcountry.org/images/_square/Hassan-Rohani.jpg"))),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                  index == 0
                      ? const Positioned(
                          right: 3,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(
                              Icons.add,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container()
                ],
              );
            })),
  );



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
