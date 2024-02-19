import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sustain_x/components/my_textfield.dart';
import 'package:sustain_x/components/my_button.dart';


class Login extends StatelessWidget {
  Login({super.key});

  final emailController  = TextEditingController();
  final passwordController = TextEditingController();

  // final Function()? onTap;
  void signUserIn() async {
    await FirebaseAuth.instance.
    signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 20.0),
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
                    padding: const EdgeInsets.fromLTRB(0.0, 55.0, 0.0, 0.0),
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
                    padding: const EdgeInsets.fromLTRB(0.0, 55.0, 0.0, 0.0),
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
                    padding: const EdgeInsets.fromLTRB(0.0, 110.0, 0.0, 0.0),
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
                    padding: const EdgeInsets.fromLTRB(0.0, 110.0, 0.0, 0.0),
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
                    padding: const EdgeInsets.fromLTRB(0.0, 170.0, 0.0, 0.0),
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
                    padding: const EdgeInsets.fromLTRB(0.0, 170.0, 0.0, 0.0),
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

              // Email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              //Sign In Button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

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
                width: double.infinity,
                height: 75,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 5.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[300], // Background color
                      onPrimary: Colors.black, // Text color
                      side: BorderSide(color: Colors.black), // Border color
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image.asset(
                            'assets/images/google.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        Text(
                          'Google',
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
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        // onTap: widget.onTap,
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))),
        ));
  }
}
