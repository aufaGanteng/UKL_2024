
import 'package:flutter/material.dart';
import 'package:ukl_flutter/views/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Daftar TIX ID"),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: sw * 0.05,
            fontWeight: FontWeight.bold),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.only(top: sw * 0.05),
          child: Center(
            child: Container(
              width: sw * 0.9,
              height: sw * 0.15,
              child: TextField(
                decoration: InputDecoration(
                  label: Text("NAMA LENGKAP"),
                  labelStyle: TextStyle(
                    color: Colors.indigo.shade900,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: sw * 0.05),
          child: Center(
            child: Container(
              width: sw * 0.9,
              height: sw * 0.15,
              child: TextField(
                decoration: InputDecoration(
                  label: Text("NOMOR HANDPHONE"),
                  labelStyle: TextStyle(
                    color: Colors.indigo.shade900,
                  ),
                  hintText: "+62",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: sw * 0.5,
          height: sw * 0.15,
          padding: EdgeInsets.only(top: sw * 0.1),
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomeView(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.indigo.shade900,
              minWidth: sw * 0.9,
              height: sw * 0.15,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Center(
                  child: Text(
                    "Daftar TIX ID",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
