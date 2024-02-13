import 'package:flutter/material.dart';
import 'package:sustain_x/pages/home.dart';

class AddLocation extends StatelessWidget {
  const AddLocation({super.key});

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

              // Container(height: 30,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: "State",
                    hintText: 'Enter your state',
                  ),
                ),
              ),

              // Container(height: 20,),

              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //padding: EdgeInsets.fromLTRB(10.0, 10.0, 55.0, 10.0),

                      Container(
                        width: 145,
                        height: 075,
                        child: //Padding(
                            //padding: const EdgeInsets.fromLTRB(00.0, 0.0, 180.0, 0.0),
                            // child:
                            TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(color: Colors.green)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "City",
                            hintText: 'Enter your city',
                          ),
                        ),
                      ),

                      Container(
                        width: 145,
                        height: 075,
                        child: //Padding(
                            //padding: const EdgeInsets.fromLTRB(00.0, 0.0, 180.0, 0.0),
                            // child:
                            TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(color: Colors.green)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Pin Code",
                            hintText: 'Enter your pin code',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Container(height: 10,),

              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "Address",
                  hintText: 'Enter your address',
                  //hoverColor: Colors.green,
                ),
              ),

              //Container(height: 20,),

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
              Center(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(210.0, 20.0, 0.0, 0.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange[300], // Background color
                        onPrimary: Colors.black, // Text color
                        side: BorderSide(color: Colors.black), // Border color
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      //},
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    )),
              ),
            ],
          ))),
        ));
  }
}
