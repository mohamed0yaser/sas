import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeTap extends StatefulWidget {
  const HomeTap({Key? key}) : super(key: key);
  static const String routeName = 'Home Tap';

  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 170,
                    height: 170,
                    margin: EdgeInsets.only(top: 50,right: 10),
                    child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                              interval: 10,
                              startAngle: 0,
                              endAngle: 360,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 73,
                                    width: 20,
                                    color: Colors.grey,
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve)
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Column(
                                      children: <Widget>[
                                        Container(
                                            width: 50.00,
                                            height: 50.00,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: ExactAssetImage('images/rain.png'),
                                                //fit: BoxFit.fitHeight,
                                              ),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Container(
                                            child: Text('73°F',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25)),
                                          ),
                                        )
                                      ],
                                    ),
                                    angle: 90,
                                    positionFactor: 0.7)
                              ])
                        ]),
                  ),
                  Spacer(),
                  Container(
                      width: 170,
                      height: 170,
                      margin: EdgeInsets.only(top: 50,left: 10),
                      child: SfRadialGauge(
                          axes: <RadialAxis>[
                      RadialAxis(
                        interval: 10,
                        startAngle: 0,
                        endAngle: 360,
                        showTicks: false,
                        showLabels: false,
                        axisLineStyle: AxisLineStyle(thickness: 20),
                        pointers: <GaugePointer>[
                          RangePointer(
                              value: 73,
                              width: 20,
                              color: Colors.red,
                              enableAnimation: true,
                              cornerStyle: CornerStyle.bothCurve)
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              widget: Column(
                                children: <Widget>[
                                  Container(
                                      width: 50.00,
                                      height: 50.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: ExactAssetImage('images/temp.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                    child: Container(
                                      child: Text('73°F',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                    ),
                                  )
                                ],
                              ),
                              angle: 90,
                              positionFactor: 0.7)
                        ])
                    ]),
                    ),
                  Spacer(),
                  Container(
                    width: 170,
                    height: 170,
                    margin: EdgeInsets.only(top: 50,right: 10),
                    child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                              interval: 10,
                              startAngle: 0,
                              endAngle: 360,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 73,
                                    width: 20,
                                    color: Colors.blueAccent,
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve)
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Column(
                                      children: <Widget>[
                                        Container(
                                            width: 50.00,
                                            height: 50.00,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: ExactAssetImage('images/humidity.png'),
                                                fit: BoxFit.fitHeight,
                                              ),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Container(
                                            child: Text('73°F',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25)),
                                          ),
                                        )
                                      ],
                                    ),
                                    angle: 90,
                                    positionFactor: 0.7)
                              ])
                        ]),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 170,
                    height: 170,
                    margin: EdgeInsets.only(top: 50,right: 10),
                    child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                              interval: 10,
                              startAngle: 0,
                              endAngle: 360,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 73,
                                    width: 20,
                                    color: Colors.grey,
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve)
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Column(
                                      children: <Widget>[
                                        Container(
                                            width: 50.00,
                                            height: 50.00,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: ExactAssetImage('images/rain.png'),
                                                //fit: BoxFit.fitHeight,
                                              ),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Container(
                                            child: Text('73°F',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25)),
                                          ),
                                        )
                                      ],
                                    ),
                                    angle: 90,
                                    positionFactor: 0.7)
                              ])
                        ]),
                  ),
                  Spacer(),
                  Container(
                    width: 170,
                    height: 170,
                    margin: EdgeInsets.only(top: 50,left: 10),
                    child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                              interval: 10,
                              startAngle: 0,
                              endAngle: 360,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 73,
                                    width: 20,
                                    color: Colors.blue,
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve)
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Column(
                                      children: <Widget>[
                                        Container(
                                            width: 50.00,
                                            height: 50.00,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: ExactAssetImage('images/soil.png'),
                                                fit: BoxFit.fitHeight,
                                              ),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Container(
                                            child: Text('73°F',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25)),
                                          ),
                                        )
                                      ],
                                    ),
                                    angle: 90,
                                    positionFactor: 0.7)
                              ])
                        ]),
                  ),
                  Spacer(),
                  Container(
                    width: 170,
                    height: 170,
                    margin: EdgeInsets.only(top: 50,right: 10),
                    child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                              interval: 10,
                              startAngle: 0,
                              endAngle: 360,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 20),
                              pointers: <GaugePointer>[
                                RangePointer(
                                    value: 73,
                                    width: 20,
                                    color: Color(0xFFFFCD60),
                                    enableAnimation: true,
                                    cornerStyle: CornerStyle.bothCurve)
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Column(
                                      children: <Widget>[
                                        Container(
                                            width: 50.00,
                                            height: 50.00,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: ExactAssetImage('images/sun.png'),
                                                fit: BoxFit.fitHeight,
                                              ),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Container(
                                            child: Text('73°F',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25)),
                                          ),
                                        )
                                      ],
                                    ),
                                    angle: 90,
                                    positionFactor: 0.7)
                              ])
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
        );
  }
}
