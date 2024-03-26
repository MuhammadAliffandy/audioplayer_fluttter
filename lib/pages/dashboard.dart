import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_praktikum/pages/home.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.music_video,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person,
                color: Colors.black,
              )),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.message_sharp, color: Colors.black))
        ],
      ),
      body: Homepage()
    );
  }
}
