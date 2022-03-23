import 'package:flutter/material.dart';

class My_Ads extends StatelessWidget {
  const My_Ads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        child: GridView.builder(

            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(right: 5,left:5,top: 10,bottom: 10),
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
      ),
      backgroundColor: Color(0xffE5E5E5),
    );
  }
}
