import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() => runApp(const SpeedometerApp());

class SpeedometerApp extends StatelessWidget {

  static const String title = 'Speedometer';
  const SpeedometerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1E2834),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Radial Speed Meter Gauge')),
        backgroundColor: Colors.blueGrey.shade800,
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        alignment: Alignment.center,
        height: 250.0,
        child: SizedBox(
                  width: 250.0,
          height: 250.0,
          child: SfRadialGauge(
            title: const GaugeTitle(
              text: 'Speed Meter',
            ),
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
              RadialAxis(
                minimum: 0,
                maximum: 150,
                ranges: <GaugeRange>[
                  GaugeRange(startValue: 0, endValue: 50,
                    color: Colors.green, startWidth: 10, endWidth: 10,
                  ),
                  GaugeRange(startValue: 50, endValue: 100,
                    color: Colors.orange, startWidth: 10, endWidth: 10,
                  ),
                  GaugeRange(startValue: 100, endValue: 150,
                    color: Colors.red, startWidth: 10, endWidth: 10,
                  ),
                ],
                pointers: const <GaugePointer>[
                  NeedlePointer(
                    value: 80,
                  ),
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Container(
                        child: const Text(
                          '80.0',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    angle: 90,
                    positionFactor: 0.5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


