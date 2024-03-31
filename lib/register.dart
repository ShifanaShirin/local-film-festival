import 'package:flutter/material.dart';
import 'package:local_film_festival/bottomnavigation.dart';


class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
TextEditingController namecontroller=TextEditingController();
TextEditingController phonecontroller=TextEditingController();
TextEditingController emailcontroller=TextEditingController();
TextEditingController passwordcontroller=TextEditingController();
TextEditingController addresscontroller=TextEditingController();
      final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'REGISTER',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text('Name',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  TextFormField(
                    controller: namecontroller,
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              hintText: 'Name',
              prefixIcon: Icon(Icons.person_2_outlined,
                color: Colors.black,
              ),
              fillColor: Colors.grey.withOpacity(0.3),
              filled: true),
              validator: (value) {
                if(value!.isEmpty)
                {
                  return 'Please enter your name';
                }
                else
                {
                  return null;
                }
              },
              ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text('Phone',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  TextFormField(
                    controller: phonecontroller,
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              hintText: 'Phone',
              prefixIcon: Icon(
                Icons.mobile_screen_share,
                color: Colors.black,
              ),
              fillColor: Colors.grey.withOpacity(0.3),
              filled: true),
              validator: (value) {
                if(value!.isEmpty)
                {
                  return 'Please enter your Phone Number';
                }
                else
                {
                  return null;
                }
              },
              ),
                  
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text('Email',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              hintText: 'Email',
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              fillColor: Colors.grey.withOpacity(0.3),
              filled: true),
              validator: (value) {
                if(value!.isEmpty)
                {
                  return 'Please enter your Email ID';
                }
                else
                {
                  return null;
                }
              },
              ),
              
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text('Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              hintText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.black,
              ),
              fillColor: Colors.grey.withOpacity(0.3),
              filled: true),
              validator: (value) {
                if(value!.isEmpty)
                {
                  return 'Please enter your Password';
                }
                else
                {
                  return null;
                }
              },
              ),
              
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text('Address',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  TextFormField(
                    controller: addresscontroller,
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              hintText: 'Address',
              prefixIcon: Icon(
                Icons.contacts,
                color: Colors.black,
              ),
              fillColor: Colors.grey.withOpacity(0.3),
              filled: true),
              validator: (value) {
                if(value!.isEmpty)
                {
                  return 'Please enter your Address';
                }
                else
                {
                  return null;
                }
              },
              ),
              
                  SizedBox(
                    height: size.height * 0.055,
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                    width: size.width * double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4))),
                        onPressed: () {
                          if (_formKey.currentState!.validate()){
                            namecontroller.text.toString();
                            phonecontroller.text.toString();
                            emailcontroller.text.toString();
                            passwordcontroller.text.toString();
                            addresscontroller.text.toString();
                          }
                          Navigator.push(context,MaterialPageRoute(builder: (context) => BottomNavigationScreen(),));
                        },
                        child: Text('Register',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
