import 'package:flutter/material.dart';

class Post_widget extends StatelessWidget {
  const Post_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFAFDF5),
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.person),
                ),
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "What's Happening?"),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.photo)),
                  Icon(Icons.gif_box_outlined),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.emoji_emotions_outlined))
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  height: 30,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        "Post",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
