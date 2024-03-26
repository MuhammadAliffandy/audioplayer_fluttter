import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Snap(),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pinimg.com/originals/1d/f4/28/1df4287db3a0c6966c1f0e30ad3dc907.jpg'),
                  ),
                  title: Text('Anos Voldogiad'),
                  trailing: Icon(Icons.more_horiz_outlined),
                ),
                Container(
                  child: Image(
                    image: NetworkImage('https://awsimages.detik.net.id/community/media/visual/2022/03/25/manga-one-piece_43.webp?w=700&q=90'),
                  ),
                  color: Colors.blue,
                  width: 500,
                  height: 320,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined, color: Colors.black)),
                            IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble, color: Colors.black)),
                            IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined, color: Colors.black)),
                          ],
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.share, color: Colors.black))
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('asdaasjdjkdsjkdjkdasjdasjkd'),
                    SizedBox(
                      height: 5,
                    ),
                    Text('asdaasjdjkdsjkdjkdasjdasjkd')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Snap extends StatelessWidget {
  const Snap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsetsDirectional.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Anos Voldogiad',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Anos Voldogiad',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Anos Voldogiad',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Anos Voldogiad',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Anos Voldogiad',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
