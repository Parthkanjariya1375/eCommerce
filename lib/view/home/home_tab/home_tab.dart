import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../widgets/list_tile.dart';
import '../../../widgets/product_design.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.keyboard_voice_outlined),
                hint: Text('Search any Product'),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'All Featured',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 15,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/beauty.png'),
                      ),
                      Text('Beauty'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/fashion.png'),
                      ),
                      Text('Fashion'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/kids.png'),
                      ),
                      Text('Kids'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/mens.png'),
                      ),
                      Text('Mens'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/womens.png'),
                      ),
                      Text('Womens'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/gifts.png'),
                      ),
                      Text('Gifts'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CarouselSlider.builder(
              itemCount: 3,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/home_offer.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    padding: EdgeInsets.all(50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "40-50% OFF",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Now in (product)\nAll colors',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'View All -->',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
              options: CarouselOptions(
                height: 230.0,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 3),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: AppListTile(
              title: Text('Deal of the Day'),
              subtitle: Text('22h 55m remaining'),
              onClick: () {},
              color: Colors.blue,
              child: Text("View All -->"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              height: 180,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                ),
                children: [
                  ProductDesign(
                    title: 'Women Printed kurta',
                    description:
                    'Neque porro quisquam est qui\ndolorem ipsum quia',
                    prize: 'rs. 1499',
                    image: 'assets/women_kurta.png',
                  ),
                  ProductDesign(
                    title: 'HRX by Hrithik Roshan',
                    description:
                    'Neque porro quisquam est qui\ndolorem ipsum quia',
                    prize: 'rs. 2499',
                    image: 'assets/snickers.png',
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/home_ad.png'),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: double.infinity,
              height: 180,
              child: Row(
                spacing: 50,
                children: [
                  Image.asset('assets/heals.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Flat and Heels',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Stand a chance to get rewarded',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text('Visit now -->'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: AppListTile(
              title: Text('Trending Products '),
              subtitle: Text('Last Date 29/01/2026'),
              onClick: () {},
              color: Colors.pinkAccent,
              child: Text('View All -->'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 150,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                ),
                children: [
                  ProductDesign(
                    title: 'IWC Schaffhausen 2021\nPilots Watch',
                    prize: 'rs. 650',
                    image: 'assets/pilot_watch.png',
                  ),
                  ProductDesign(
                    title: 'Labbin White Sneakers\nFor Men and Female',
                    prize: 'rs. 650',
                    image: 'assets/labbin_sneaker.png',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 285,
              color: Colors.white,
              child: Column(
                spacing: 10,
                children: [
                  Image.asset('assets/summer_sale.png', fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'New Arrivals',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Summer 25 Collections',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('View All -->'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 12),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sponserd',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Image.asset('assets/offer_banner.png'),
                  Text(
                    'Up to 50% OFF',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ], // main column children
      ),
    );
  }
}
