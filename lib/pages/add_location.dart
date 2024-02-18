import 'package:flutter/material.dart';
import 'package:sustain_x/pages/home.dart';
import 'package:sustain_x/components/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sustain_x/components/my_button.dart';

class AddLocation extends StatelessWidget {
  AddLocation({super.key});

  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final pincodeController = TextEditingController();
  final addressController = TextEditingController();

  // // void signUserUp() async => await FirebaseAuth.instance.signInWithEmailAndPassword(
  //      state: stateController.text,
  //      city: cityController.text,
  //      // confirmpassword: confirmpasswordController.text,
  // //   );
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
          child: SingleChildScrollView(
              child: Container(
                  // width: 380,
                  // height: 700,
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // Background text with stroke
                  Text(
                    'Add Location',
                    style: TextStyle(
                      fontSize: 38,
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
                    'Add Location',
                    style: TextStyle(
                      fontSize: 38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1BE417),
                    ),
                  ),
                ],
              ),
              MyTextField(
                controller: stateController,
                hintText: 'State',
                obscureText: false,
              ),
              const SizedBox(height: 1),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 145,
                      height: 075,
                      child: MyTextField(
                        controller: stateController,
                        hintText: 'City',
                        obscureText: false,
                      ),
                    ),
                    Container(
                      width: 145,
                      height: 075,
                      child: MyTextField(
                        controller: stateController,
                        hintText: 'Pin Code',
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),
              MyTextField(
                controller: stateController,
                hintText: 'Address',
                obscureText: false,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                child: Text(
                  'Select Your Location',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              Container(
                height: 2,
              ),
              Image.asset('assets/images/map1.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(230.0, 10.0, 0.0, 0.0),
                child: MyButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  buttonText: 'Next',
                  height: 45,
                ),
              ),
            ],
          ))),
        ));
  }
}
