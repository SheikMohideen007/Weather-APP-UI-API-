import 'package:flutter/material.dart';

class DayCard extends StatefulWidget {
  const DayCard({super.key, required this.devHeight, required this.onPress});

  final double devHeight;
  final Function() onPress;

  @override
  State<DayCard> createState() => _DayCardState();
}

class _DayCardState extends State<DayCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: widget.devHeight * 0.045,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset('images/rain.png'),
                ),
              ),
              Column(
                children: [
                  Text('Tomorrow',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('Light Rain Showers',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 10)),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_upward, color: Colors.grey.shade400),
                  Text('18°')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_downward, color: Colors.grey.shade400),
                  Text('10°')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
