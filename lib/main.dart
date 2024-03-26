import 'package:flutter/material.dart';
import 'package:flutter_praktikum/pages/audioPlayer.dart';

void main() {
  runApp(AudioPlayerPage());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> daftarPodcast = [
    {
      'judul': 'Berbeda tapi Bersama',
      'gambar': 'https://images.noiceid.cc/catalog/content-1660033271845',
      'tanggal': '12 Maret 2023',
      'subtitle': 'Berbeda Tapi Bersama with Habib Jafar Dalam podcast ini, Habib Jafar membahas tentang kepercayaan dengan penuh toleransi dan tanpa menggurui',
      'rating': <Widget>[
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
      ]
    },
    {
      'judul': 'Musuh Masyarakat',
      'gambar': 'https://images.noiceid.cc/catalog/300x300/content-1678356657165',
      'tanggal': '12 Maret 2023',
      'subtitle': 'Tretan Muslim & Adriano Qalbi hadir dengan opini-opini berani & kontroversial yang akan bikin mereka jadi Musuh Masyaraka . . .',
      'rating': <Widget>[
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star_border, color: Colors.amber, size: 20),
      ]
    },
    {
      'judul': 'Trio Kurnia',
      'gambar': 'https://images.noiceid.cc/catalog/compressed/content-1660037096035',
      'tanggal': '18 Maret 2023',
      'subtitle': 'Trio Kurnia dipandu oleh Vincent Kurnia, Andre Kurnia, & Desta Kurnia, di sini mereka akan berbagi cerita tentang orang-orang yang menghiasi hidup mereka ..',
      'rating': <Widget>[
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star_border, color: Colors.amber, size: 20),
      ]
    },
    {
      'judul': 'Deddy Issues',
      'gambar': 'https://images.noiceid.cc/catalog/content-1659685788107',
      'tanggal': '12 November 2023',
      'subtitle': 'Deddy Issues akan menyuguhkan berbagai topik unik, menarik dan mengejutkan mengupas suatu opini dari sudut pandang berbeda sekaligus dilengkap',
      'rating': <Widget>[
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star_border, color: Colors.amber, size: 20),
        Icon(Icons.star_border, color: Colors.amber, size: 20),
      ]
    },
    {
      'judul': 'Meet Everbody',
      'gambar': 'https://images.noiceid.cc/catalog/compressed/content-1654409970449',
      'tanggal': '1 juli 2023',
      'subtitle': 'Podcast yang dibawakan oleh selebriti Hesti dan Onad ini menghadirkan konten menarik dan cerita unik yang mungkin belum pernah kita dengar sebelumnya',
      'rating': <Widget>[
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star_border, color: Colors.amber, size: 20),
        Icon(Icons.star_border, color: Colors.amber, size: 20),
        Icon(Icons.star_border, color: Colors.amber, size: 20),
      ]
    },
    {
      'judul': 'Diary Coki',
      'gambar': 'https://images.noiceid.cc/catalog/content-1666316650032',
      'tanggal': '12 Februari 2023',
      'subtitle': 'Mau tau kisah Paman Coki waktu di rehabilitasi? Dengerin deh Podcast Diary Coki di Noice. Dengerin kisah rehabilitasi Coki Pardede di Podcast Diary Coki hanya di Noice gratis!',
      'rating': <Widget>[
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
        Icon(Icons.star, color: Colors.amber, size: 20),
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          leading: Icon(Icons.chevron_left),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 231, 189, 51),
          title: Text('Podcast Indonesia '),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 6,
            ),
            Icon(Icons.more_vert_sharp)
          ],
        ),
        body: ListView(
          children: daftarPodcast.map((data) {
            return PodCard(
              judul: data['judul'],
              gambar: data['gambar'],
              tanggal: data['tanggal'],
              subtitle: data['subtitle'],
              rating: data['rating'],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class PodCard extends StatelessWidget {
  final judul;
  final gambar;
  final tanggal;
  final subtitle;
  final rating;

  const PodCard({this.judul, this.gambar, this.tanggal, this.subtitle, this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Color.fromARGB(255, 36, 35, 35),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(gambar),
            maxRadius: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        judul,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        tanggal,
                        style: TextStyle(
                          color: Color.fromARGB(255, 201, 200, 200),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Color.fromARGB(255, 201, 200, 200),
                          fontSize: 12,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                Row(
                  children: rating,
                )
              ],
            ),
          ),
          Container(
            width: 50,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_circle_fill,
                  size: 40,
                  color: Colors.amber,
                )),
          )
        ]),
      ),
    );
  }
}
