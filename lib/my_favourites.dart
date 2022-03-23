import 'package:flutter/material.dart';

class My_Favourites extends StatelessWidget {
  const My_Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) => Card(
          color: Colors.white,
elevation: 5,
          shadowColor: Color(0xffE5E5E5),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),

              leading: CircleAvatar(

                  radius: 30, backgroundImage: AssetImage("assets/watch.png")),
              title: Text(
                "Apple Watch",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),

              horizontalTitleGap: 30,
              minVerticalPadding: 20,
              subtitle: Text(
                "Series 6. Red",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
