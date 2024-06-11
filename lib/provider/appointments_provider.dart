import 'package:flutter/material.dart';
import '../model/apointment.dart';


class AppointmentsProvider with ChangeNotifier {
  List<Appointment> _appointments = [
    Appointment(patientName: 'Patient name', time: '12:00 AM', status: 'Join call'),
    Appointment(patientName: 'Patient name', time: '12:00 AM', status: 'Awaiting'),
    Appointment(patientName: 'Patient name', time: '12:00 AM', status: 'Confirmed'),
    Appointment(patientName: 'Patient name', time: '12:00 AM', status: 'Cancelled'),
    // Add more dummy appointments if needed
  ];

  List<Appointment> get appointments => _appointments;
}
