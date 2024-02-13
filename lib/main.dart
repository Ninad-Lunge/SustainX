import 'package:flutter/material.dart';
import 'package:sustain_x/pages/cost_calculation.dart';
import 'package:sustain_x/pages/notification.dart';
import 'package:sustain_x/pages/pickup_history.dart';
import 'package:sustain_x/pages/register.dart';
import 'package:sustain_x/pages/home.dart';
import 'package:sustain_x/pages/login.dart';
import 'package:sustain_x/pages/price_enquiry.dart';
import 'package:sustain_x/pages/schedule_pickup.dart';
import 'package:sustain_x/pages/settings.dart';
import 'package:sustain_x/pages/start.dart';
import 'package:sustain_x/pages/success_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SustainX',
      initialRoute: '/',
      routes: {
        '/' : (context) => Start(),
        '/home' : (context) => Home(),
        '/login' : (context) => Login(),
        '/register' : (context) => Register(),
        '/settings' : (context) => Settings(),
        '/price_enquiry' : (context) => Price_Enquiry(),
        '/schedule_pickup' : (context) => SchedulePickup(),
        '/success' : (context) => SuccessPage(),
        '/notifications' : (context) => Notifications(),
        '/cost_calculation' : (context) => CostCalculation(),
        '/pickup_history' : (context) => PickupHistory(),
      },
    );
  }
}
