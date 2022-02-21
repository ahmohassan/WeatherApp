import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test/Model/WeatherModel.dart';
import 'package:test/Netwark/Network.dart';

// import 'bodyData.dart';
import 'package:http/http.dart' as http;
import 'package:test/services/Serivices.dart';

import '../widgets/Widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String city = 'Mogadishu';
  WeatherModel? data;

  getmydata() async {
    data = await Network.getData(cityName: city);
  }

  TextEditingController? controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getmydata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            // color: GradientRotation(),
            //TODO Dib u habee Macnaha Background to change
            gradient: Services.backgroundColor('sunny')),
        child: Center(
          child: FutureBuilder(
            future: getmydata(),
            builder: (context, snapshot) {
              
              // print(getmydata());
              if (snapshot.connectionState == ConnectionState.done) {
               var date = data!.dt;
                var Date = (DateTime.fromMillisecondsSinceEpoch(date! * 1000));
                var day = DateFormat('EEE').format(Date);
                var time = DateFormat('h:mm a').format(Date);
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      // color: GradientRotation()
                      gradient:
                          Services.backgroundColor('${data!.description}')),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Searchbar(
                          // city = value;

                          onSubmitted: (value) {
                            setState(() {
                              city = value;
                              Network.getData(cityName: city);
                            });
                          },
                        ),
                        customeText(
                          text: '$day',
                          fontSize: 18,
                        ),
                        customeText(
                          text: '$time',
                          fontSize: 48,
                          fontWeight: FontWeight.w800,
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        WeatherIcon(
                            icon: Services.iconData('${data!.description}')),
                        SizedBox(
                          height: 50,
                        ),
                        TempInfoWidget(
                          City: '${data!.cityname}',
                          Country: '${data!.country}',
                          Temperature:
                              '${data!.temperature!.toStringAsFixed(1)}',
                          description: '${data!.description}',
                        ),
                      ],
                    ),
                  ),
                );
                // Text('${data!.cityname}');
              } else if (snapshot.connectionState == ConnectionState.none) {
                return Center(
                  child: Text('${snapshot.connectionState}'),
                );
              } else {
                print(snapshot.connectionState);
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
