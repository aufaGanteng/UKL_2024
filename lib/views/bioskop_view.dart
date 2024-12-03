import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ukl_flutter/widgets/navbar.dart';

class BioskopView extends StatefulWidget {
  const BioskopView({super.key});

  @override
  State<BioskopView> createState() => _BioskopViewState();
}

class _BioskopViewState extends State<BioskopView> {
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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text(
                "AEON MALL JGC CGV",
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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text(
                "AEON MALL TANJUNG BARAT XXI",
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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text(
                "AGORA MALL IMAX",
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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text(
                "AGORA MALL PREMIERE",
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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text(
                "AGORA MALL XXI",
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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text(
                "ARION XXI",
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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text(
                "ARTHA GADING XXI",
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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text(
                "BASSURA XXI",
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
        ],
      ),
      bottomNavigationBar: Navbar(1),
    );
  }
}