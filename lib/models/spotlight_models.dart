import 'package:flutter/material.dart';
class spotlight {
  final String banner;
  final String judul;

  spotlight({
    required this.banner,
    required this.judul,
  });
}

List<spotlight> spot = [
  spotlight(
    banner: 'assets/spotlight 1.jpeg',
    judul: 'TIX ID Box Office ( 24 – 30 Juni)',
  ),
  spotlight(
    banner: 'assets/spotlight 2.jpeg',
    judul: 'TIX ID Box Office ( 10 - 11 april)',
  ),
  spotlight(
    banner: 'assets/banner 1.png',
    judul: 'Voucher Nonton 100K!!',
  ),
  spotlight(
    banner: 'assets/spotlight 2.jpeg',
    judul: 'TIX ID Box Office',
  ),
];



class spl extends StatelessWidget {
  const spl({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
            _buildSplight('assets/spotlight 1.jpeg'),
            SizedBox(width: 10,),
            _buildSplight('assets/spotlight 2.jpeg'),
            SizedBox(width: 10,),
            _buildSplight('assets/spotlight 1.jpeg'),
            SizedBox(width: 10,),
            _buildSplight('assets/spotlight 2.jpeg'),
            SizedBox(width: 10,),
        ],
      ),
    );
  }
  Widget _buildSplight(String img){

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  child: Stack(
                    children: [
                      Image.asset(
                        img,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.remove_red_eye, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('57'),
                      SizedBox(width: 16),
                      Icon(Icons.thumb_up_alt, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('10'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}