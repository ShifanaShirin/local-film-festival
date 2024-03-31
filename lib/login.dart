import 'package:flutter/material.dart';
import 'package:local_film_festival/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
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
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Form(
                key:_formKey ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset('assets/art.png')),
                    Center(
                        child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    TextFormField(
                      controller: phonecontroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none),
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Colors.black,
                          ),
                          fillColor: Colors.white,
                          filled: true),
                          validator: (value) {
                            if (value!.isEmpty){
                              return 'Please enter your Email';
                            }
                            else
                            {
                              return null;
                            }
                          },
                    ),
                    SizedBox(
                      height: size.height * 0.025,
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
                          fillColor: Colors.white,
                          filled: true),
                          validator: (value) {
                            if (value!.isEmpty)
                            {
                              return 'Please enter your password';
                            }
                            else
                            {
                              return null;
                            }
                          },
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
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
                             if (_formKey.currentState!.validate()) {
                          phonecontroller.text.toString();
passwordcontroller.text.toString();
                            
                       
                        }
                          },
                          child: Text('Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: size.width * 0.0255,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => register()));
                          },
                          child: Text('Register',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 78, 167, 240),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget customtextfield(IconData iconData, String text) {
  return TextFormField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
        hintText: text,
        prefixIcon: Icon(
          iconData,
          color: Colors.black,
        ),
        fillColor: Colors.grey.withOpacity(0.3),
        filled: true),
  );
}
