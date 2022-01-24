import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {
  final Row topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      const Text(
        'Stories',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: const <Widget>[
          Text(
            'See All',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(Icons.play_arrow)
        ],
      )
    ],
  );
  final stories = Expanded(
    child: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (contex, index) {
              return Stack(
                // alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://www.goodcountry.org/images/_square/Hassan-Rohani.jpg"))),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                  ),
                  index == 0
                      ? Positioned(
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
