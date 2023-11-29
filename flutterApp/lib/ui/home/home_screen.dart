// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterapp/data/data.dart';
import 'package:flutterapp/ui/main_screen.dart';
import 'package:transparent_image/transparent_image.dart';

part 'components/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7fa),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const Header(),
              Expanded(
                flex: 1,
                child: AlignedGridView.count(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  padding: EdgeInsets.zero,
                  itemCount: Data.views.length,
                  itemBuilder: (BuildContext context, int index) =>
                      FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: Data.views[index],
                    fit: BoxFit.cover,
                  ),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
