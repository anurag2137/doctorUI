import 'package:doctor_ui/screen/profile.dart';
import 'package:flutter/material.dart';

import '../widgets/apointment_list.dart';
import '../widgets/bottom nav.dart';
import '../widgets/profile_section.dart';

import 'appointment screen.dart';
import 'chat_screen.dart';

class OurDoctorsScreen extends StatefulWidget {
  @override
  _OurDoctorsScreenState createState() => _OurDoctorsScreenState();
}

class _OurDoctorsScreenState extends State<OurDoctorsScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    ProfileSection(),
    ChatScreen(),
    AppointmentsScreen(),
    DoctorProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Doctors'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_selectedIndex == 0) ...[
            _widgetOptions[_selectedIndex],
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Today's appointments (10)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            AppointmentList(),
          ] else ...[
            Expanded(child: _widgetOptions[_selectedIndex]),
          ],
        ],
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
