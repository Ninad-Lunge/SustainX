import 'package:flutter/material.dart';

class SchedulePickup extends StatefulWidget {
  const SchedulePickup({super.key});

  @override
  _SchedulePickupState createState() => _SchedulePickupState();
}

class _SchedulePickupState extends State<SchedulePickup> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 00.0, horizontal: 0),
                child: Text(
                  'Schedule a Free Pickup',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 05.0, 0.0, 0.0),
                      child: Container(
                        //width: 220,
                        height: 65,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          onTap: () async {
                            await _selectDate(context);
                          },
                          controller: dateController,
                          readOnly: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.green),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            labelText: "Select a pickup date",
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.date_range_outlined),
                              onPressed: () async {
                                await _selectDate(context);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        height: 65,
                        child: TextField(
                          onTap: () async {
                            await _selectTime(context);
                          },
                          controller: timeController,
                          readOnly: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.green),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            labelText: "Add your preferred time",
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.access_time_outlined),
                              onPressed: () async {
                                await _selectTime(context);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 8.0),
                      child: Text(
                        'Confirm Pickup Location',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Image.asset('assets/images/map1.png'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        height: 65,
                        child: TextField(
                          controller: locationController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.green),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            labelText: "House No. 10, Street, City",
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.home_work_outlined),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange[300],
                            onPrimary: Colors.black,
                            side: const BorderSide(color: Colors.black),
                          ),
                          onPressed: () {
                            if (selectedDate == null ||
                                selectedTime == null ||
                                locationController.text.isEmpty) {
                              _showAlert(context,
                                  "Please fill all fields before scheduling pickup.");
                              return;
                            }

                            // Use selectedDate and selectedTime as needed
                            String pickupDetails = '';
                            pickupDetails += 'Date: ${selectedDate!.toLocal()}';
                            pickupDetails +=
                                '\nTime: ${selectedTime!.format(context)}';
                            pickupDetails +=
                                '\nLocation: ${locationController.text}';
                            print(pickupDetails);

                            Navigator.pushNamed(context, '/success');
                          },
                          child: const Text(
                            'Schedule Pickup',
                            style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      //   child: Container(
      //     child: BottomNavigationBar(
      //       items: [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.menu),
      //           label: 'Menu',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.message_outlined),
      //           label: 'Notification',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.settings_outlined),
      //           label: 'Settings',
      //         ),
      //       ],
      //       currentIndex: 0,
      //       onTap: (int index) {
      //         switch (index) {
      //           case 0:
      //             Navigator.pushNamed(context, '/home');
      //             break;
      //           case 1:
      //             Navigator.pushNamed(context, '/notifications');
      //             break;
      //           case 2:
      //             Navigator.pushNamed(context, '/settings');
      //             break;
      //         }
      //       },
      //       elevation: 0.0,
      //       backgroundColor: Colors.transparent,
      //       selectedItemColor: Colors.green,
      //     ),
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(17.0),
      //       border: Border.all(color: Colors.black),
      //     ),
      //   ),
      // ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        dateController.text = "${pickedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
        timeController.text = pickedTime.format(context);
      });
    }
  }

  void _showAlert(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
