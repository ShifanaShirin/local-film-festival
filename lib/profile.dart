import 'package:flutter/material.dart';
import 'package:local_film_festival/main.dart';


class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: appcolor,
        title: Text('Profile',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [
                Center(child: Text('Profile',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                SizedBox(height: 20,),
                CircleAvatar(backgroundImage: AssetImage('assets/profile.jpg'),radius: 80,),
                SizedBox(height: 30,),
                TextField(
                decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Name'
                ),
                
                ),
                SizedBox(height: 30,),
                TextField(
                decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Email'
                ),
                ),
                SizedBox(height: 30,),
                TextField(
                decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Mobile Number'
                ),  
                ),
                SizedBox(height: 30,),
                TextField(
                decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Date of Birth',
                suffixIcon: IconButton(onPressed: () {
                  showDatePicker(
                    context: context, firstDate: DateTime(1990), lastDate: DateTime.now());
                  
                }, icon: Icon(Icons.calendar_month))
                ),  
                ),
                SizedBox(height: 30,),
                TextField(
                decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Address'
                ),  
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(appcolor)),
                        onPressed: () {
                        
                      }, child: Text('Save Profile',style: TextStyle(color: Colors.white,fontSize: 15),)),
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(appcolor)),
                        onPressed: () {
                        
                      }, child: Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 15),)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}