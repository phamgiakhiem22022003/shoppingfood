import 'package:flutter/material.dart';
import 'package:shoppingfood/Page/DrawerHomePage.dart';
import 'package:shoppingfood/widget/BottomCartSheet.dart';
import 'package:shoppingfood/widget/CategoriesWidget.dart';
import 'package:shoppingfood/widget/PopularItemWiget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF785B),
        title: Center(
            child: Text(
                "W E L C O M E",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSlidingBottomSheet(context, builder: (context) {
                  return SlidingSheetDialog(
                      elevation: 8,
                      cornerRadius: 16,
                      builder: (context, state) {
                        return BottomCartSheet();
                      });
                });
              },
              icon: Icon(
                Icons.shopping_bag_rounded,
                color: Colors.white,
                size: 25,
              ),
          ),
        ],
      ),
      drawer: DrawerHomePage(),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFF785B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
                    //Icon
                    // InkWell(
                    //   onTap: () {},
                    //   child: const Icon(
                    //     Icons.sort_rounded,
                    //     color: Colors.white,
                    //     size: 35,
                    //   ),
                    // ),
                    // InkWell(
                    //   onTap: () {
                    //     showSlidingBottomSheet(context, builder: (context) {
                    //       return SlidingSheetDialog(
                    //           elevation: 8,
                    //           cornerRadius: 16,
                    //           builder: (context, state) {
                    //             return BottomCartSheet();
                    //           }
                    //       );
                    //     },);
                    //   },
                    //   child: const Icon(
                    //     Icons.shopping_bag_rounded,
                    //     color: Colors.white,
                    //     size: 35,
                    //   ),
                    // )
              //     ],
              //   ),
              // ),

              // // Text Welcome
              // const SizedBox(height: 10),
              // const Center(
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 15),
              //     child: Text(
              //       "Welcome",
              //       style: TextStyle(
              //           fontSize: 32,
              //           color: Colors.white,
              //           fontWeight: FontWeight.bold
              //       ),
              //     ),
              //   ),
              // ),

              //Text title
              const SizedBox(height: 30),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Homemade meals prepared with love. Richest ingredients.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

              //TextField Search
              SizedBox(height: 38),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Product Widget
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoriesWidget(),
                    PopularItemWidget(),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
