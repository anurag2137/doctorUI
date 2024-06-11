import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointments Screen'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Appointments',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          _buildAppointmentItem(
            patientName: 'Abhigyan Mishra ',
            appointmentTime: '2024-06-12 10:00 AM',
            consultType: 'Video Call',
            status: 'Confirmed',
          ),
          _buildAppointmentItem(
            patientName: 'Pragya Mishra',
            appointmentTime: '2024-06-12 11:00 AM',
            consultType: 'In-Person',
            status: 'Pending',
          ),
          _buildAppointmentItem(
            patientName: 'Anurag Mishra',
            appointmentTime: '2024-06-12 12:00 PM',
            consultType: 'Video Call',
            status: 'Cancelled',
          ),
          // Add more dummy appointments if needed
        ],
      ),
    );
  }

  Widget _buildAppointmentItem({
    required String patientName,
    required String appointmentTime,
    required String consultType,
    required String status,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            patientName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Time: $appointmentTime',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Consult Type: $consultType',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Status: $status',
            style: TextStyle(
              fontSize: 16,
              color: status == 'Confirmed'
                  ? Colors.green
                  : status == 'Pending'
                  ? Colors.orange
                  : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
