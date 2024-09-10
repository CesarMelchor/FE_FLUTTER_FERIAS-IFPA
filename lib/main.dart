
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'IFPA',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'IFPA'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fondo.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            SizedBox(
              height: Adaptive.w(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    controller: FlipCardController(),
                    side: CardSide.FRONT,
                    speed: 700,
                    onFlipDone: (status) {},
                    front: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/cartel1.jpg",
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/reverso.png",
                                ),
                                fit: BoxFit.cover)),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: Adaptive.h(8),),
                            InkWell(
                                onTap: () {
                                  launchUrlString("https://maps.app.goo.gl/QrfTz5vrmvG21qiA9");
                                },
                                child:  Text("¿Cómo llegar?", style: TextStyle(fontSize: Adaptive.sp(14), fontWeight: FontWeight.bold),))
                                ],
                        ),
                      ),
                    ),
                  ),
                ),
                //2

                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    controller: FlipCardController(),
                    side: CardSide.FRONT,
                    speed: 700,
                    onFlipDone: (status) {},
                    front: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/cartel2.jpg",
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/reverso.png",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: Adaptive.h(8),),
                            InkWell(
                                onTap: () {
                                  launchUrlString("https://maps.app.goo.gl/LENrLZC3LCwc4Akj9");
                                },
                               
                                child:  Text("¿Cómo llegar?", style: TextStyle(fontSize: Adaptive.sp(14), fontWeight: FontWeight.bold),))
                               
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //3

                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    controller: FlipCardController(),
                    side: CardSide.FRONT,
                    speed: 700,
                    onFlipDone: (status) {},
                    front: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/cartel3.jpg",
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/reverso.png",
                                ),
                                fit: BoxFit.cover)),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: Adaptive.h(8),),
                            InkWell(
                                onTap: () {
                                  launchUrlString("https://maps.app.goo.gl/fYQTJPWJWg9Nbveu7");
                                },
                                
                                child:  Text("¿Cómo llegar?", style: TextStyle(fontSize: Adaptive.sp(14), fontWeight: FontWeight.bold),))
                               
                                ],
                        ),
                      ),
                    ),
                  ),
                ),
                //4

                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    controller: FlipCardController(),
                    side: CardSide.FRONT,
                    speed: 700,
                    onFlipDone: (status) {},
                    front: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/cartel4.jpg",
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/reverso.png",
                                ),
                                fit: BoxFit.cover)),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: Adaptive.h(8),),
                            InkWell(
                                onTap: () {
                                  launchUrlString("https://maps.app.goo.gl/bxwdzQEfJ8dsfjpM7");
                                },
                                
                                child:  Text("¿Cómo llegar?", style: TextStyle(fontSize: Adaptive.sp(14), fontWeight: FontWeight.bold),))
                               ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Adaptive.h(5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    controller: FlipCardController(),
                    side: CardSide.FRONT,
                    speed: 700,
                    onFlipDone: (status) {},
                    front: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/cartel5.png",
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/reverso.png",
                                ),
                                fit: BoxFit.cover)),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: Adaptive.h(8),),
                            InkWell(
                                onTap: () {
                                  launchUrlString("https://maps.app.goo.gl/wCFczbrGNap4nCzAA");
                                },
                               
                                child:  Text("¿Cómo llegar?", style: TextStyle(fontSize: Adaptive.sp(14), fontWeight: FontWeight.bold),))
                               ],
                        ),
                      ),
                    ),
                  ),
                ),
                //2

                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    controller: FlipCardController(),
                    side: CardSide.FRONT,
                    speed: 700,
                    onFlipDone: (status) {},
                    front: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/cartel6.jpg",
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/reverso.png",
                                ),
                                fit: BoxFit.cover)),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: Adaptive.h(8),),
                            InkWell(
                                onTap: () {
                                  launchUrlString("https://maps.app.goo.gl/vmRqGzLHEgASgrS58");
                                },
                                
                                child:  Text("¿Cómo llegar?", style: TextStyle(fontSize: Adaptive.sp(14), fontWeight: FontWeight.bold),))
                               ],
                        ),
                      ),
                    ),
                  ),
                ),
                //3
               
                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    controller: FlipCardController(),
                    side: CardSide.FRONT,
                    speed: 700,
                    onFlipDone: (status) {},
                    front: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/cartel.jpg",
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/reverso.png",
                                ),
                                fit: BoxFit.cover)),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: Adaptive.h(8),),
                            InkWell(
                                onTap: () {
                                  launchUrlString("");
                                },
                               
                                child:  Text("¿Cómo llegar?", style: TextStyle(fontSize: Adaptive.sp(14), fontWeight: FontWeight.bold),))
                               ],
                        ),
                      ),
                    ),
                  ),
                ),
                
                /*
                //4
                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                  color: const Color(0x00000000),
                  child: FlipCard(
                    controller: FlipCardController(),
                    direction: FlipDirection.HORIZONTAL,
                    side: CardSide.FRONT,
                    speed: 700,
                    onFlipDone: (status) {},
                    front: Container(
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/cartel4.jpg",
                            height: Adaptive.h(50),
                            width: Adaptive.w(19),
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: Adaptive.h(50),
                      width: Adaptive.w(19),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006666),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Back',
                              style: Theme.of(context).textTheme.displayLarge),
                          Text('Click here to flip front',
                              style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),
                  ),
                )*/
              ],
            ),
            SizedBox(
              height: Adaptive.h(10),
            )
          ],
        ),
      ),
    );
  }
}
