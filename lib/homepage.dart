import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:local_film_festival/filmdetails.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LOCAL FILM FESTIVAL HUB',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Enjoy our movies',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: Text('Shifana'),
              accountEmail: Text('shifana@gmail.com'),
              currentAccountPicture: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('Events'),
            ),
            ListTile(
              leading: Icon(Icons.view_array),
              title: Text('View Screen'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
            ),
            ListTile(
              leading: Icon(Icons.support),
              title: Text('Support'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(children: [
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Local Film Festival Hub',
                        style: TextStyle(
                            color: Color.fromARGB(255, 219, 22, 8),
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Get free support from our',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('customer service', style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 219, 22, 8))),
                            onPressed: () {},
                            child: Text(
                              'Call Now',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/film.png',
                        height: 150,
                        width: 160,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Feautured Movie Lists',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                'See all',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 219, 22, 8)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => film()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover)),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Colors.black.withOpacity(.8),
                                      Colors.black.withOpacity(.0),
                                    ])),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  names[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                          ),
                        ),
                      ));
                }),
          ),
        ]),
      ),
    );
  }
}
