import 'package:flutter/material.dart';
import 'package:weatherapp/utils/rounded_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double devHeight = 0.0, devWidth = 0.0;
  bool isExpanded = false;
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
                      Text('Next 5 Days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: devHeight * 0.02),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey.shade300,
                                        radius: devHeight * 0.045,
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Image.asset('images/rain.png'),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text('Tomorrow',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14)),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text('Light Rain Showers',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade700,
                                                      fontSize: 10)),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.arrow_upward,
                                              color: Colors.grey.shade400),
                                          Text('18°')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.arrow_downward,
                                              color: Colors.grey.shade400),
                                          Text('10°')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              color: Colors.green,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              height: isExpanded ? 250 : 0,
                              child: ClipRRect(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                        color: Colors.grey.shade300,
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        color: Colors.red,
                        height: 500,
                      )
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
