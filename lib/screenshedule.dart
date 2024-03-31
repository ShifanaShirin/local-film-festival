import 'package:flutter/material.dart';
import 'package:local_film_festival/main.dart';

class screenschedulescreen extends StatefulWidget {
  const screenschedulescreen({super.key});

  @override
  State<screenschedulescreen> createState() => _screenschedulescreenState();
}

class _screenschedulescreenState extends State<screenschedulescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor,
        title: Text(
          'Screen Schedule',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Card(
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Color.fromARGB(255, 76, 75, 75),width: .5,style: BorderStyle.solid)),
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  
                )
                
                
              ),
            ),
          
          ),
          Container(
            height: 20,
            width: 100,
            decoration: BoxDecoration(color: appcolor,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
          )
        ],
      ),
    );
  }
}