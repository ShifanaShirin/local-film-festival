import 'package:flutter/material.dart';
import 'package:local_film_festival/main.dart';

class eventpage extends StatefulWidget {
  const eventpage({super.key});

  @override
  State<eventpage> createState() => _eventpageState();
}

class _eventpageState extends State<eventpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor,
        title: Text(
          'Film Events',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Card(
              color: Colors.grey[300],
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Film Fest 2024',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Time : 11:30 am',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[800],
                          border: Border.all(color: Colors.green, width: 1.5)),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            child: Center(
                                child: Text(
                              'Date :',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            '2024-04-02',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
