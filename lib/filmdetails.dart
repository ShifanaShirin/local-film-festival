import 'package:flutter/material.dart';
import 'package:local_film_festival/colors.dart';

class film extends StatefulWidget {
  const film({super.key});

  @override
  State<film> createState() => _filmState();
}

class _filmState extends State<film> {
  final List<String> images = [
    'assets/pulimurugan.jpg',
    'assets/loham.jpg',
    'assets/neru.png'
  ];
  final List<String> names = ['Pulimurugan', 'Loham', 'Neru'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 219, 22, 8),
        title: Text(
          'Film Details',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          Icon(
            Icons.bookmark_outline_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 375,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/pulimurugan.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Pulimurugan',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Year : 2016',
                style: TextStyle(
                    color: Color.fromARGB(255, 219, 22, 8),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Cast : Mohanlal as Murugan',
                style: TextStyle(
                    color: Color.fromARGB(255, 219, 22, 8),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pulimurugan is one of the highest -gossing malayalam films of all time and received widespread acclaim for its action sequences and performances. particularly Mohanlals potrayal of the titular character',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Coordinator Details:',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: appcolor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Coordinator Name: anu',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Coordinator Email: anu@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Coordinator Phone: 9087654321',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Coordinator Address: company',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'About Coordinator: 5 ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: appcolor),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.airplane_ticket_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Book your Ticket',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
