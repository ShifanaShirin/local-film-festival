import 'package:flutter/material.dart';
import 'package:local_film_festival/events.dart';
import 'package:local_film_festival/filmdetails.dart';
import 'package:local_film_festival/login.dart';
import 'package:local_film_festival/main.dart';
import 'package:local_film_festival/profile.dart';
import 'package:local_film_festival/screenshedule.dart';

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
              decoration: BoxDecoration(color: appcolor),
              accountName: Text('Shifana'),
              accountEmail: Text('shifana@gmail.com'),
              currentAccountPicture: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),));
              },
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => eventpage(),));
              },
              child: ListTile(
                leading: Icon(Icons.event),
                title: Text('Events'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => screenschedulescreen(),));
              },
              child: ListTile(
                leading: Icon(Icons.schedule),
                title: Text('Screen Schedule'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => profilepage(),));
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: ListTile(
                leading: Icon(Icons.bookmark_border),
                title: Text('View Award'),
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: ListTile(
                leading: Icon(Icons.feedback),
                title: Text('Feedback'),
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: ListTile(
                leading: Icon(Icons.support),
                title: Text('Support'),
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Logout',style: TextStyle(fontWeight: FontWeight.bold),),
                  content: Text('Are you want exit this app?',style: TextStyle(fontSize: 15),),
                  actions: <Widget>[
                   ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(appcolor)),
                    onPressed: (){
                    Navigator.pop(context);
                   }, child:Text('CANCEL',style: TextStyle(color: Colors.white),)),
                     ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(appcolor)),
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                     }, child:Text('OK',style: TextStyle(color: Colors.white),))
                  ],
                );
              },
            );
              },
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
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
