import 'package:bloodbank/common_widgets/common_widgets.dart';
import "package:flutter/material.dart";
import '../common_widgets/pageLayoutWidgets.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
    return Scaffold(
      backgroundColor: Color(0xFFF46A6A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageTitle(title: "My Bookings"), //donate blood
              SizedBox(
                height: 30,
              ),

              BookingInfo(
                  bloodBankName: "Sarita",
                  date: DateTime.now(),
                  isGovernment: true),
            ],
          ),
        ),
      ),
    );
  }
}
