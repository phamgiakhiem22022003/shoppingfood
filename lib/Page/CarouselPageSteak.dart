import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselPageSteak extends StatefulWidget {

  List<String> imgListSteak;

  CarouselPageSteak({super.key, required this.imgListSteak});

  @override
  State<CarouselPageSteak> createState() => _CarouselPageSteakState();
}

class _CarouselPageSteakState extends State<CarouselPageSteak> {

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imgeSliders =
    widget.imgListSteak.map((item) => Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0),),
        child: Stack(
          children: [
            Image.asset(
              item,
              fit: BoxFit.cover,
              width: 1000,
            ),
            Positioned(
              bottom: 0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Steak ${widget.imgListSteak.indexOf(item)}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    )).toList();

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                "Best Steak SELLER",
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        CarouselSlider(
          items: imgeSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgListSteak.map((url){
            int index = widget.imgListSteak.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),

      ],
    );
  }
}



