import 'package:flutter/material.dart';
import 'package:sas/app_color.dart';
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
      appBar: AppBar(
        title: Text("Name Field",style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: AppColor.colorGreen,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: SfRadialGauge(
                        enableLoadingAnimation: true,
                        axes: <RadialAxis>[
                      RadialAxis(
                          radiusFactor: 0.5,
                          interval: 10,
                          startAngle: 0,
                          endAngle: 360,
                          showTicks: false,
                          showLabels: false,
                          axisLineStyle: AxisLineStyle(thickness: 1.5),
                          pointers: <GaugePointer>[
                            RangePointer(
                                value: 73,
                                width: 1.5,
                                color: Color(0xFFdd312e),
                                enableAnimation: true,
                              gradient: SweepGradient(colors: [
                                Color(0xFFdd312e),
                              ],
                                  stops: [
                                    1.0,
                                  ]
                              ),)
                          ],
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                widget: Column(
                                  children: <Widget>[
                                    Container(
                                        width: 20.00,
                                        height: 20.00,
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: ExactAssetImage(
                                                'images/temp.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      child: Container(
                                        child: Text('73°F',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10)),
                                      ),
                                    )
                                  ],
                                ),
                                angle: 90,
                                positionFactor: 0.7)
                          ])
                    ]),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: SfRadialGauge(
                        enableLoadingAnimation: true,
                        axes: <RadialAxis>[
                      RadialAxis(
                          radiusFactor: 0.5,
                          interval: 10,
                          startAngle: 0,
                          endAngle: 360,
                          showTicks: false,
                          showLabels: false,
                          axisLineStyle: AxisLineStyle(thickness: 1.5),
                          pointers: <GaugePointer>[
                            RangePointer(
                                value: 73,
                                width: 1.5,
                                color: Color(0xFF008ECC),
                                enableAnimation: true,
                              gradient: SweepGradient(colors: [
                                Color(0xFF008ECC),
                              ],
                                  stops: [
                                    1.0,
                                  ]
                              ),
                                )
                          ],
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                widget: Column(
                                  children: <Widget>[
                                    Container(
                                        width: 20.00,
                                        height: 20.00,
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: ExactAssetImage(
                                                'images/humidity.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      child: Container(
                                        child: Text('73°F',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10)),
                                      ),
                                    )
                                  ],
                                ),
                                angle: 90,
                                positionFactor: 0.7)
                          ])
                    ]),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: SfRadialGauge(
                        enableLoadingAnimation: true,
                        axes: <RadialAxis>[
                          RadialAxis(
                              radiusFactor: 0.5,
                              interval: 10,
                              startAngle: 0,
                              endAngle: 360,
                              showTicks: false,
                              showLabels: false,
                              axisLineStyle: AxisLineStyle(thickness: 1.5),
                              pointers: <GaugePointer>[
                                RangePointer(
                                  value: 73,
                                  width: 1.5,
                                  color: Color(0xFF424242),
                                  enableAnimation: true,
                                  gradient: SweepGradient(colors: [
                                    Color(0xFF424242),
                                  ],
                                      stops: [
                                        1.0,
                                      ]
                                  ),)
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Column(
                                      children: <Widget>[
                                        Container(
                                            width: 20.00,
                                            height: 20.00,
                                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: ExactAssetImage(
                                                    'images/soil.png'),
                                                fit: BoxFit.fitHeight,
                                              ),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Container(
                                            child: Text('73°F',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10)),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: SfRadialGauge(
                      enableLoadingAnimation: true,
                      axes: <RadialAxis>[
                        RadialAxis(
                            radiusFactor: 0.5,
                            startAngle: 0,
                            endAngle: 360,
                            minimum: 0,
                            maximum: 100,
                            useRangeColorForAxis: true,
                            showTicks: false,
                            showLabels: false,
                            canScaleToFit: true,
                            axisLineStyle: AxisLineStyle(
                              thickness: 1.5,
                            ),
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: 73,
                                width: 1.5,
                                enableAnimation: true,
                                gradient: SweepGradient(colors: [
                                  Color(0xFF73c5f1),
                                ],
                                    stops: [
                                      1.0,
                                    ]
                                ),
                              ),
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  widget: Column(
                                    children: <Widget>[
                                      Container(
                                          width: 20.00,
                                          height: 20.00,
                                          margin:
                                          EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/rain.png'),
                                              //fit: BoxFit.fitHeight,
                                            ),
                                          )),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                        child: Container(
                                          child: Text('73°F',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10)),
                                        ),
                                      )
                                    ],
                                  ),
                                  angle: 90,
                                  positionFactor: 0.7)
                            ])
                      ]),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: SfRadialGauge(
                      enableLoadingAnimation: true,
                      axes: <RadialAxis>[
                    RadialAxis(
                        radiusFactor: 0.5,
                        interval: 10,
                        startAngle: 0,
                        endAngle: 360,
                        showTicks: false,
                        showLabels: false,
                        axisLineStyle: AxisLineStyle(thickness: 1.5),
                        pointers: <GaugePointer>[
                          RangePointer(
                              value: 73,
                              width: 1.5,
                              color: Color(0xFF69A297),
                              enableAnimation: true,
                            gradient: SweepGradient(colors: [
                              Color(0xFF69A297),
                            ],
                                stops: [
                                  1.0,
                                ]
                            ),)
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              widget: Column(
                                children: <Widget>[
                                  Container(
                                      width: 20.00,
                                      height: 20.00,
                                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: ExactAssetImage(
                                              'images/pump.png'),
                                          //fit: BoxFit.fitHeight,
                                        ),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                    child: Container(
                                      child: Text('on',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10)),
                                    ),
                                  )
                                ],
                              ),
                              angle: 90,
                              positionFactor: 0.7)
                        ])
                  ]),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: SfRadialGauge(
                      enableLoadingAnimation: true,
                      axes: <RadialAxis>[
                    RadialAxis(
                        radiusFactor: 0.5,
                        interval: 10,
                        startAngle: 0,
                        endAngle: 360,
                        showTicks: false,
                        showLabels: false,
                        axisLineStyle: AxisLineStyle(thickness: 1.5),
                        pointers: <GaugePointer>[
                          RangePointer(
                              value: 73,
                              width: 1.5,
                              color: Color(0xFFF1BC12),
                              enableAnimation: true,
                            gradient: SweepGradient(colors: [
                              Color(0xFFF1BC12),
                            ],
                                stops: [
                                  1.0,
                                ]
                            ),)
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              widget: Column(
                                children: <Widget>[
                                  Container(
                                      width: 20.00,
                                      height: 20.00,
                                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              ExactAssetImage('images/sun.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                    child: Container(
                                      child: Text('73°F',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10)),
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
            Divider(
              color: AppColor.colorGreen,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
