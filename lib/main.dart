import 'package:doctor_ui/provider/appointments_provider.dart';
import 'package:doctor_ui/screen/doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => AppointmentsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor Dashboard',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OurDoctorsScreen(),
      ),
    );
  }
}
