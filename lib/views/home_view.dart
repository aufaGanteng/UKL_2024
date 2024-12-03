import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:ukl_flutter/models/movie_models.dart';
import 'package:ukl_flutter/models/spotlight_models.dart';
import 'package:ukl_flutter/views/login_view.dart';
import 'package:ukl_flutter/widgets/navbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: sw * 0.0001),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // searchField(),

              Container(
                width: sw * 0.7,
                height: sw * 0.08,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "Cari Di TIX ID",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 45,
                child: Icon(
                  Icons.person_rounded,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 40,
                height: 45,
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.location_on_sharp, color: Colors.grey),
              title: Text(
                "JAKARTA",
                style: TextStyle(
                  fontSize: 16,
                ),
              ), // Text
              childrenPadding: const EdgeInsets.all(16),
              backgroundColor: Colors.white,
              collapsedBackgroundColor: Colors.grey.shade300,
              textColor: Colors.blue,
              collapsedTextColor: Colors.black,
              iconColor: Colors.blue,
              collapsedIconColor: Colors.grey,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        SizedBox(width: 8),
                        Text(
                          "Tandai bioskop favoritmu!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Bioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text("Mengerti"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 0.4,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 1,
                    autoPlayInterval: Duration(seconds: 4)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final Category = categories[index];
                  //             return GestureDetector(
                  // onTap: () {
                  //   // Navigasi ke halaman lain
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DetailPage(category: category),
                  //     ),
                  //   );
                  // },

                  return Container(
                    width: sw * 1,
                    padding: EdgeInsets.only(left: sw * 0.01, right: sw * 0.01),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Membuat sudut melengkung
                      child: Image.asset(
                        Category.banner,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: sw * 1,
                    child: Image.asset(
                      "assets/widget.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  right: sw * 0.1,
                  top: sw * 0.12,
                  child: Container(
                    width: sw * 0.6,
                    height: sw * 0.05,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LoginView(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // Sudut melengkung
                        ),
                        backgroundColor:
                            Colors.greenAccent, // Warna latar belakang tombol
                        padding: EdgeInsets.zero, // Mematikan padding
                      ),
                      child: Center(
                        child: Text(
                          "Jadilah TIX VIP Dapatkan Untung Lebih",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: sw * 0.02,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
                  child: Text(
                    "Sedang Tayang",
                    style: TextStyle(
                        fontSize: sw * 0.06, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: sw * 0.35, top: sw * 0.01),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Semua",
                          style: TextStyle(
                              fontSize: sw * 0.04, fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.arrow_circle_right,
                          size: sw * 0.04,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              _buildTextCircle("Semua Film", true),
              SizedBox(width: 15,),
              _buildTextCircle("XXI", false),
              SizedBox(width: 15,),
              _buildTextCircle("CGV", false),
              SizedBox(width: 15,),
              _buildTextCircle("Cinepolis", false),
              SizedBox(width: 15,),
              _buildTextCircle("Watchlist", false),
              SizedBox(width: 15,),
              _buildTextCircle("History", false),
              SizedBox(width: 15,),
            ],),
          ),

          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // Warna border
                  width: 2, // Lebar border
                ),
              ),
            ),
            padding: EdgeInsets.only(top: sw * 0.05),
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 1.2,
                    autoPlay: true,
                    viewportFraction: 0.79,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 8)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final Category = categories[index];
                  //             return GestureDetector(
                  // onTap: () {
                  //   // Navigasi ke halaman lain
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DetailPage(category: category),
                  //     ),
                  //   );
                  // },

                  return Container(
                    child: Column(
                      children: [
                        Container(
                          width: sw * 0.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Membuat sudut melengkung
                            child: Image.asset(
                              Category.poster,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: sw * 0.02),
                          width: sw * 0.6,
                          child: Text(
                            Category.nama,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: sw * 0.045,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: sw * 0.5,
                          child: Text(
                            "Film ini dapat rating ⭐${Category.rating} dari penonton lho!, Harus ditonton nih!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: sw * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.03),
            child: Text(
              "Spotlight",
              style:
                  TextStyle(fontSize: sw * 0.05, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
            child: Text(
              "Berita hiburan terhangat untuk anda!",
              style: TextStyle(fontSize: sw * 0.03),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                spl()
              ],
            ),
            // decoration: BoxDecoration(
            //   border: Border(
            //     bottom: BorderSide(
            //       color: Colors.grey, // Warna border
            //       width: 2, // Lebar border
            //     ),
            //   ),
            // ),
            // padding: EdgeInsets.only(top: sw * 0.02, bottom: sw * 0.02),
            // child: Center(
            //   child: CarouselSlider.builder(
            //     options: CarouselOptions(
            //         height: sw * 0.5,
            //         autoPlay: true,
            //         enableInfiniteScroll: true,
            //         viewportFraction: 0.9,
            //         autoPlayInterval: Duration(seconds: 10)),
            //     itemCount: categories.length,
            //     itemBuilder: (context, index, realIndex) {
            //       final spotlight = spot[index];
            //                   return GestureDetector(
            //       onTap: () {
            //         // Navigasi ke halaman lain
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => DetailPage(category: category),
            //           ),
            //         );
            //       },

            //       return Column(
            //         children: [
            //           Container(
            //             width: sw * 1,
            //             padding:
            //                 EdgeInsets.only(left: sw * 0.01, right: sw * 0.01),
            //             child: ClipRRect(
            //               borderRadius: BorderRadius.circular(
            //                   10), // Membuat sudut melengkung
            //               child: Image.asset(
            //                 spotlight.banner,
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           ),
            //           Container(
            //             padding: EdgeInsets.only(top: sw * 0.02),
            //             width: sw * 0.6,
            //             child: Text(
            //               spotlight.judul,
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                   fontSize: sw * 0.040,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.03),
                child: Text(
                  "TIX Now",
                  style: TextStyle(
                      fontSize: sw * 0.05, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: sw * 0.55, top: sw * 0.01),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "Semua",
                        style: TextStyle(
                            fontSize: sw * 0.04, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        size: sw * 0.04,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
            child: Text(
              "Update Berita terbaru seputar dunia film",
              style: TextStyle(fontSize: sw * 0.03),
            ),
          ),
          Column(
            // children: [
            //   spl(),
            // ],
            children: List.generate(
              spot.length,
              (index) => GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: sw * 0.05),
                  width: sw * 1,
                  height: sw * 0.2,
                  child: Row(children: [
                    Container(
                        width: sw * 0.4,
                        height: sw * 0.4,
                        padding: EdgeInsets.only(right: sw * 0.05),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              spot[index].banner,
                              width: sw * 0.1,
                              fit: BoxFit.contain,
                            ))),
                    Text(
                      spot[index].judul,
                      style: TextStyle(
                          fontSize: sw * 0.03, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ]),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Navbar(0),
    );
  }
  Widget _buildTextCircle(String nama, bool isFirst) {
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Row(
      children: [
        InkWell(
          onTap: () {},
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: isFirst ? Colors.blue : Colors.black,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Text(
                    nama,
                    style: TextStyle(
                      fontSize: 10,
                      color: isFirst ? const Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
}