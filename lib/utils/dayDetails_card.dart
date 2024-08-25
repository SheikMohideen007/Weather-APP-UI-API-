import 'package:flutter/material.dart';
import 'package:weatherapp/utils/rounded_image.dart';

class DayDetailsCard extends StatelessWidget {
  const DayDetailsCard({
    super.key,
    required this.isExpanded,
    required this.devHeight,
  });

  final bool isExpanded;
  final double devHeight;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      height: isExpanded ? 280 : 0,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'sun',
                      time: '05:00 AM',
                      degree: '23'),
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'partlycloud',
                      time: '06:00 AM',
                      degree: '20'),
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'rain',
                      time: '07:00 AM',
                      degree: '17'),
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'thunder',
                      time: '08:00 AM',
                      degree: '16'),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 2,
                color: Colors.grey.shade500,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'sun',
                      time: '05:00 AM',
                      degree: '23'),
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'partlycloud',
                      time: '06:00 AM',
                      degree: '20'),
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'sunset',
                      time: 'Sunset',
                      degree: '20'),
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'rain',
                      time: '07:00 AM',
                      degree: '17'),
                  RoundedImage(
                      devHeight: devHeight,
                      climate: 'thunder',
                      time: '08:00 AM',
                      degree: '16'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
