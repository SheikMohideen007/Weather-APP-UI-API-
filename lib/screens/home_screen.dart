import 'package:flutter/material.dart';
import 'package:weatherapp/utils/dayDetails_card.dart';
import 'package:weatherapp/utils/day_card.dart';
import 'package:weatherapp/utils/rounded_image.dart';
import 'package:weatherapp/utils/todayDetails_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double devHeight = 0.0, devWidth = 0.0;
  List<bool> isExpanded = [false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    devHeight = MediaQuery.of(context).size.height;
    devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: devHeight,
          width: devWidth,
          child: Image.asset(
            'images/night.png',
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: devHeight * 0.6,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.white),
                          SizedBox(width: 10),
                          Text('Chennai, India',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20))
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            print('tapped');
                          },
                          icon: Icon(Icons.menu, color: Colors.white, size: 30))
                    ],
                  ),
                  SizedBox(height: 40),
                  TodayDetails(),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.4,
            minChildSize: 0.4,
            maxChildSize: 0.85,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: ListView(
                    controller: scrollController,
                    padding: EdgeInsets.zero,
                    children: [
                      SizedBox(height: devHeight * 0.02),
                      Align(
                        alignment: Alignment.topCenter,
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints(maxHeight: 3, maxWidth: 35),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: devHeight * 0.03),
                      Text('Hourly Forecast',
                          textScaler: TextScaler.linear(1.0),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: devHeight * 0.04),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
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
                      ),
                      SizedBox(height: devHeight * 0.03),
                      Text('Next 7 Days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: devHeight * 0.02),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: devWidth * 0.005),
                        child: Column(
                          children: [
                            //Tomorrow
                            DayCard(
                                devHeight: devHeight,
                                onPress: () {
                                  setState(() {
                                    isExpanded[0] = !isExpanded[0];
                                  });
                                }),
                            DayDetailsCard(
                                isExpanded: isExpanded[0],
                                devHeight: devHeight),
                            SizedBox(height: 20),
                            //Day 2
                            DayCard(
                                devHeight: devHeight,
                                onPress: () {
                                  setState(() {
                                    isExpanded[1] = !isExpanded[1];
                                  });
                                }),
                            DayDetailsCard(
                                isExpanded: isExpanded[1],
                                devHeight: devHeight),
                            SizedBox(height: 20),
                            //Day 3
                            DayCard(
                                devHeight: devHeight,
                                onPress: () {
                                  setState(() {
                                    isExpanded[2] = !isExpanded[2];
                                  });
                                }),
                            DayDetailsCard(
                                isExpanded: isExpanded[2],
                                devHeight: devHeight),
                            SizedBox(height: 20),
                            // Day 4
                            DayCard(
                                devHeight: devHeight,
                                onPress: () {
                                  setState(() {
                                    isExpanded[3] = !isExpanded[3];
                                  });
                                }),
                            DayDetailsCard(
                                isExpanded: isExpanded[3],
                                devHeight: devHeight),
                            SizedBox(height: 20),
                            // Day 5
                            DayCard(
                                devHeight: devHeight,
                                onPress: () {
                                  setState(() {
                                    isExpanded[4] = !isExpanded[4];
                                  });
                                }),
                            DayDetailsCard(
                                isExpanded: isExpanded[4],
                                devHeight: devHeight),
                            SizedBox(height: 20),
                            // Day 6
                            DayCard(
                                devHeight: devHeight,
                                onPress: () {
                                  setState(() {
                                    isExpanded[5] = !isExpanded[5];
                                  });
                                }),
                            DayDetailsCard(
                                isExpanded: isExpanded[5],
                                devHeight: devHeight),
                            SizedBox(height: 20),
                            // Day 7
                            DayCard(
                                devHeight: devHeight,
                                onPress: () {
                                  setState(() {
                                    isExpanded[6] = !isExpanded[6];
                                  });
                                }),
                            DayDetailsCard(
                                isExpanded: isExpanded[6], devHeight: devHeight)
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
