// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutterapp/data/data.dart';
import 'package:transparent_image/transparent_image.dart';

part 'components/header_account.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<String> data = [];
  int index = 0;

  @override
  void initState() {
    super.initState();
    data = Data.views;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xfff6f7fa),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(55), child: HeaderAccount()),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xfff6f7fa),
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  padding: const EdgeInsets.only(top: 60),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Text(
                        "Rizal",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text("+62852342492412 |  rizalmuh@gmail.com",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      const SizedBox(height: 14),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: const Text(
                          "~ Saya Adalah Fotographer Jalanan, Suka Dengan Pemandangan Alam Indonesia ~",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Positioned(
                  top: 120,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                        image:
                            "https://c1.wallpaperflare.com/preview/622/843/732/man-male-photographer-camera.jpg",
                      ),
                    ),
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