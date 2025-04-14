import 'package:flutter/material.dart';
import 'package:google_map/Web_View_Page.dart';
import 'package:google_map/google_map_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleMapPage(),));
              }, child: Text("Google Map")),
            ),
            Center(
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewPage(),));
              }, child: Text("Web View")),
            )
          ],
        ),
      ),
    );
  }
}
