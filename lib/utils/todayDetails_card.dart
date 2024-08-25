import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weatherapp/model/current_weather.dart';
import 'package:weatherapp/services/api_service.dart';

class TodayDetails extends StatefulWidget {
  const TodayDetails({
    super.key,
  });

  @override
  State<TodayDetails> createState() => _TodayDetailsState();
}

class _TodayDetailsState extends State<TodayDetails> {
  String currClimate = "", currLastUpdated = "";
  double currMaxTemp = 0.0,
      currMinTemp = 0.0,
      currTemp = 0.0,
      currUv = 0.0,
      currWindspeed = 0.0;
  int currHumidity = 0;

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  fetchWeather() async {
    Map<String, dynamic> json = await ApiService().fetchDataFromWeatherAPI();
    // print(json);
    CurrentWeather weather = CurrentWeather.fromJson(json);
    currMaxTemp = weather.maxTemp;
    currClimate = weather.climate;
    currHumidity = weather.humidity;
    currLastUpdated = weather.lastUpdated;
    currMinTemp = weather.minTemp;
    currTemp = weather.temp;
    currUv = weather.uv;
    currWindspeed = weather.windSpeed;
  }

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
                Text('Today, Aug 25, 12:13',
                    style: TextStyle(color: Colors.white)),
                RichText(
                  text: TextSpan(
                      text: currTemp.toString(),
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
              child: Row(
                children: [
                  SizedBox(height: 20, child: Image.asset('images/clouds.png')),
                  SizedBox(width: 10),
                  Text(
                    "Mostly Cloudy",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.5)),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(children: [
                      SizedBox(
                          height: 30,
                          child: Image.asset('images/windspeed.png')),
                      SizedBox(width: 5),
                      Text('23 KPH',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ]),
                    Text('Wind Speed',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: [
                    Row(children: [
                      SizedBox(
                          height: 30,
                          child: Image.asset('images/humidity.png')),
                      SizedBox(width: 5),
                      Text('65',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ]),
                    Text('Humidity',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: [
                    Row(children: [
                      SizedBox(height: 30, child: Image.asset('images/uv.png')),
                      SizedBox(width: 5),
                      Text('25',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ]),
                    Text('UV',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
