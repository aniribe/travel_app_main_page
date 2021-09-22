import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_main_page/config/app_colors.dart';
import 'package:travel_app_main_page/config/data.dart';
import 'package:travel_app_main_page/widgets/image_list.dart';
import 'package:travel_app_main_page/widgets/search_input.dart';
import 'package:travel_app_main_page/widgets/title.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopMainSection(),
            SizedBox(height: 30),
            ListsSection(),
          ],
        ),
      ),
    );
  }
}

class ListsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTitle(
            text: 'Best Destination',
            textColor: lightGrey,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 20),
          ImageList(imageList: imageList),
          SizedBox(height: 30),
          AppTitle(
            text: 'Best Hotels',
            textColor: lightGrey,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 20),
          ImageList(imageList: imageList.reversed.toList()),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}

class TopMainSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/background.jpg'),
        fit: BoxFit.cover,
      )),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
          Colors.black.withOpacity(0.8),
          Colors.black.withOpacity(0.2)
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppTitle(
              text: 'What would you like to find?',
              textColor: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 30),
            SearchInput(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
