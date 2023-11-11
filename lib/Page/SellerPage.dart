import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoppingfood/Page/CarouselPage.dart';
import 'package:shoppingfood/Page/CarouselPagePasta.dart';
import 'package:shoppingfood/Page/CarouselPageSteak.dart';


class SellerPage extends StatefulWidget {
  const SellerPage({super.key});

  @override
  State<SellerPage> createState() => _SellerPageState();
}

final List<String> imgListBurgur = [
  "assets/img/burgurB.jpg",
  "assets/img/burgurG.jpg",
  "assets/img/burgurT.jpg",
];

final List<String> imgListPizza = [
  "assets/img/pizzaHS.jpg",
  "assets/img/pizzaPM.jpg",
  "assets/img/pizzaXX.jpg",
];

final List<String> imgListSteak = [
  "assets/img/steakBo.jpg",
  "assets/img/steakHeo.jpg",
];

final List<String> imgListPasta = [
  "assets/img/pastaCuon.jpg",
  "assets/img/pastaSoi.jpg",
];



class _SellerPageState extends State<SellerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFF785B),
        title: Text(
            "S E L L E R",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "BEST SELLER",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),

                SizedBox(height: 5),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "BEST BURGER SELLER",
                        style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                //Tự chuyển Động
                CarouselSlider(
                  items: imgListBurgur.map((item) => Container(
                    child: Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    ),
                  )).toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true
                  ),
                ),


                //Seller Pizza
                SizedBox(height: 10),
                CarouselPage(imgListPizza: imgListPizza),

                //Seller Steak
                SizedBox(height: 10),
                CarouselPageSteak(imgListSteak: imgListSteak),

                //Seller Pasta
                SizedBox(height: 10),
                CarouselPagePasta(imgListPasta: imgListPasta),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
