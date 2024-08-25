import 'package:flutter/material.dart';

class TodayDetails extends StatelessWidget {
  const TodayDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Today, Aug 25 12:13',
                    style: TextStyle(color: Colors.white)),
                RichText(
                  text: TextSpan(
                      text: '16',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 150,
                          fontWeight: FontWeight.bold),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.top,
                          child: Text(
                            '°c',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ),
                      ]),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_upward,
                                color: Colors.grey.shade400),
                            Text('18°', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        SizedBox(width: 15),
                        Row(
                          children: [
                            Icon(Icons.arrow_downward,
                                color: Colors.grey.shade400),
                            Text('10°', style: TextStyle(color: Colors.white))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                "Mostly Cloudy",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(height: 30),
        Container(
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.5)),
          child: Row(
            children: [
              Column(
                children: [
                  Row(children: []),
                  Text('Wind Speed', style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  Row(children: []),
                  Text('Humidity', style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  Row(children: []),
                  Text('Ultra Voilet', style: TextStyle(color: Colors.white))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
