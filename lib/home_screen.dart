// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<String> _categories = ["Foods","Electronics","Groceries","Dress"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:20,left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text("Hello Momin!",
                  style: TextStyle(
                      color: Colors.black87,
                  fontSize: 32,
                  fontWeight: FontWeight.w600)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text("Let's get something?",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)
                  ),
                ),
                SizedBox(height: 35,),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 170,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xffF46D38),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Stack(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left:15.0),
                              child: Text(
                                "40% off During\nCovid19",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 12.0, right: 12.0),
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset("assets/img.png", height: 80,))
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 170,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xff3861F4),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Stack(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left:15.0),
                              child: Text(
                                "40% off During\nCovid19",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 12.0, right: 12.0),
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset("assets/img.png", height: 80,))
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 170,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xffF46D38),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Stack(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left:15.0),
                              child: Text(
                                "40% off During\nCovid19",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 12.0, right: 12.0),
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset("assets/img.png", height: 80,))
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffFF4800)
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                      itemBuilder:(context, index){
                        return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20, left: 20),
                              child: Center(
                                child: Text(_categories[index], style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                                ),),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15)
                            )
                          ),
                        );
                      },
                  )
                ),
                SizedBox(height: 15,),
                  Container(
                    height: 500,
                    child: GridView.builder(

scrollDirection: Axis.vertical,
                        padding: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 400/600,
                            crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index){
                          return Stack(
                            children: [
                              Positioned(
                                top: 40,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:80.0,left: 20,right: 20),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 190,
                                          child: Container(
                                            child: Text(
                                              "Apple Watch",
                                              style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 190,
                                          child: Container(
                                            child: Text("Series 6. Red",
                                              style: TextStyle(color: Colors.blueGrey,fontSize: 17,fontWeight: FontWeight.w600,),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 190,
                                          child: Container(
                                            child: Text("\$ 359",
                                              style: TextStyle(color: Colors.blueAccent,fontSize: 17,fontWeight: FontWeight.w600,),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  height: 220,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffFFFFFF)
                                  ),
                                ),

                              ),
                              Positioned(
                                left:45,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(55.0),
                                    child: Image.asset(
                                      "assets/watch.png",
                                      height: 100.0,
                                    ),
                                  )

                              )
                            ],
                          );
                        }
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffE5E5E5),
    );
  }
}
