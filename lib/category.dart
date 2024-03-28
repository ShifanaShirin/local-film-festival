import 'package:flutter/material.dart';
import 'package:local_film_festival/colors.dart';

class categorypage extends StatefulWidget {
  const categorypage({super.key});

  @override
  State<categorypage> createState() => _categorypageState();
}

class _categorypageState extends State<categorypage> {
  final List<String> names=['DRAMA','THRILLER','COMEDY','ADVENTURE','CRIME','MUSICAL'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: appcolor,
        title: Text('Film Categories',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        child: GridView.builder(
          itemCount: names.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.8), itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: GestureDetector(
              onTap: () {
                
              },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage('assets/category.jpg'),fit: BoxFit.cover)),
              child: Center(
                child: Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Text(names[index],style: TextStyle(color:appcolor,fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
              ),
              ),
            ),
          );
        },),
      ),
    );
  }
}