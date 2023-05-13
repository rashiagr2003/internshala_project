import 'package:flutter/material.dart';

class JankariUpdatesWidget extends StatelessWidget {
  const JankariUpdatesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xffFAFDF5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "New Jankari Updates",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Color(0xffFDFAF5),
            height: 140,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 15),
              scrollDirection: Axis.horizontal,
              children: [
                know_your_crop(),
                know_your_crop(),
                know_your_crop(),
                know_your_crop(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container know_your_crop() {
    return Container(
      margin: EdgeInsets.only(right: 9),
      height: 100,
      width: 110,
      padding: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
            width: 70,
            child:
                Image.network("https://images5.alphacoders.com/677/677814.jpg"),
          ),
          Text(
            "Know Your Crop",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
