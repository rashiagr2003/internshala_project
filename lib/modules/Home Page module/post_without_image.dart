import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostWithoutImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/04/07/19/pg-16-wheat-crop-getty.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Atin Singh',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        Text('@atin'),
                      ],
                    ),
                  ),
                ]),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.ellipsisVertical),
                  iconSize: 20,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Agrichikitsa is a best solution of agricultural needs',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  Text("10"),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(Icons.comment),
                  ),
                  Text("20"),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
            ],
          ),
        ],
      ),
    );
  }
}
