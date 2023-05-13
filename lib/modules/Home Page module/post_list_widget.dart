import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
          // Post image
          Image.network(
            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/04/07/19/pg-16-wheat-crop-getty.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
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
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Atin Singh',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Agrichikitsa is a best solution of agricultural needs',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Write a comment"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
