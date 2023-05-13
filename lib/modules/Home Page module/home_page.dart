import 'package:flutter/material.dart';
import 'package:internshala_project/modules/Home%20Page%20module/jankari_updates_widget.dart';
import 'package:internshala_project/modules/Home%20Page%20module/post_list_widget.dart';
import 'package:internshala_project/modules/Home%20Page%20module/post_widget.dart';
import 'package:internshala_project/modules/Home%20Page%20module/post_without_image.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffCACBC6),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xffFDFAF5),
              leadingWidth: 45,
              leading: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "http://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg",
                  ),
                  radius: 19,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined),
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    radius: 15,
                  ),
                )
              ],
            ),
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Color(0xffFDFAF5),
                      height: 35,
                      child: ListView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Category_list("All"),
                          Category_list("Category"),
                          Category_list("Category"),
                          Category_list("Category"),
                          Category_list("Category")
                        ],
                      ),
                    ),
                    Post_widget(),
                    JankariUpdatesWidget(),
                    PostListWidget(),
                    PostWithoutImageWidget(),
                    PostListWidget()
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color(0xffFDFAF5),
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.messenger_outline_outlined),
                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline),
                  label: 'AG+',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time),
                  label: 'Jankari',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ));
  }

  Container Category_list(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 7),
      // width: 60,
      // height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
