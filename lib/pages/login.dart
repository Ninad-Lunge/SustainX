import 'package:flutter/material.dart';
import 'package:sustain_x/pages/Register.dart';
import 'package:sustain_x/pages/home.dart';

//import 'home.dart';

class Login extends StatelessWidget {
  const Login({Key? key, required this.index}) : super(key: key);

  final int index;

  //TextEditingController myController()=> _ToDoPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: Center(
                  child: SingleChildScrollView(
                      child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  // Background text with stroke
                                  Text(
                                    'The',
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 2
                                        ..color = Colors.black,
                                    ),
                                  ),
                                  // Foreground text
                                  Text(
                                    'The',
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF1BE417),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 65.0, 0.0, 0.0),
                                    child: Text(
                                      'Change',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2
                                          ..color = Colors.black,
                                      ),
                                    ),
                                  ),
                                  // Foreground text
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 65.0, 0.0, 0.0),
                                    child: Text(
                                      'Change',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1BE417),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 130.0, 0.0, 0.0),
                                    child: Text(
                                      'Starts',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2
                                          ..color = Colors.black,
                                      ),
                                    ),
                                  ),
                                  // Foreground text
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 130.0, 0.0, 0.0),
                                    child: Text(
                                      'Starts',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1BE417),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 200.0, 0.0, 0.0),
                                    child: Text(
                                      'With You',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2
                                          ..color = Colors.black,
                                      ),
                                    ),
                                  ),
                                  // Foreground text
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 200.0, 0.0, 0.0),
                                    child: Text(
                                      'With You',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1BE417),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // Container(height: 30,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide:
                                            BorderSide(color: Colors.green)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    labelText: "Email",
                                    hintText: 'Enter your email',
                                  ),
                                ),
                              ),

                              // Container(height: 20,),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: TextField(
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21),
                                          borderSide:
                                              BorderSide(color: Colors.green)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      labelText: "Password",
                                      hintText: 'Enter your password',
                                      suffixIcon: IconButton(
                                        icon: Icon(Icons.remove_red_eye_outlined),
                                        onPressed: () {},
                                      )
                                      //hoverColor: Colors.green,
                                      ),
                                ),
                              ),

                              Container(
                                width: 380,
                                height: 85,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          Colors.orange[300], // Background color
                                      onPrimary: Colors.black, // Text color
                                      side: BorderSide(
                                          color: Colors.black), // Border color
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home(
                                                  index: 0,
                                                )
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Or continue with',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),

                              Container(
                                width: 380,
                                height: 85,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 20.0, 0.0, 5.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          Colors.orange[300], // Background color
                                      onPrimary: Colors.black, // Text color
                                      side: BorderSide(
                                          color: Colors.black), // Border color
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home(
                                                  index: 1,
                                                )),
                                      );
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10.0),
                                          child: Image.asset(
                                            'assets/images/google.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                        Text(
                                          'Sign in with Google',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Register(index: 0)),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      'Register Now',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                      )
                  )
              ),
            )
    );
  }
}