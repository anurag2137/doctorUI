import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/appointments_provider.dart';


class AppointmentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppointmentsProvider>(
      builder: (ctx, provider, _) => Expanded(
        child: ListView.builder(
          itemCount: provider.appointments.length,
          itemBuilder: (ctx, i) => Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text(provider.appointments[i].patientName),
              subtitle: Text(provider.appointments[i].time),
              trailing: TextButton(
                onPressed: () {},
                child: Text(provider.appointments[i].status),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
