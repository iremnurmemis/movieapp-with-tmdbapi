import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          "assets/flutflix.png",
          fit: BoxFit.cover,
          height: 40,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending Movies",
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: 10,
                options: CarouselOptions(
                    height: 300,
                    autoPlay: true, //otomatik geciş
                    viewportFraction: 0.55, //gözüken kısım
                    enlargeCenterPage: true, //ortada büyümesi
                    pageSnapping: true, //sayfaların süzülerek gecmesi
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: const Duration(seconds: 1)),
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return ClipRRect(
                    // containerın kenarlarını şekiller
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 300,
                      width: 200,
                      color: Colors.purpleAccent,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Top rated movies",
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, //yatayda kayma
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Colors.purpleAccent,
                        width: 150,
                        height: 200,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Upcoming movies",
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, //yatayda kayma
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Colors.purpleAccent,
                        width: 150,
                        height: 200,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
