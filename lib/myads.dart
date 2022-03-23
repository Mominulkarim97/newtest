import 'package:flutter/material.dart';

import 'My_Ads.dart';
import 'my_favourites.dart';

class MyAds extends StatelessWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          title: Text("My Ads",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              )),
          centerTitle: true,

          bottom: TabBar(

            // indicatorSize: TabBarIndicatorSize.label,
            padding: EdgeInsets.symmetric(vertical: 20),
            // indicatorColor: Colors.black,
            automaticIndicatorColorAdjustment: true,
            tabs: [
              Tab(
                  icon: Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
                  child: Text(
                    'Ads',
                    style: TextStyle(color: Colors.black),
                  )),
              Tab(
                icon: Icon(
                  Icons.volunteer_activism,
                  color: Colors.black,
                  size: 40,
                ),
                child: Text(
                  'Favourites',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TabBarView(children: [My_Ads(), My_Favourites()])),
        ),
      ),
    );
  }
}
