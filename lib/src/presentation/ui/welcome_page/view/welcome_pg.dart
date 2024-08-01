import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'pages/wpg1.dart';
import 'pages/wpg2.dart';
import 'pages/wpg3.dart';
import 'pages/wpg4.dart';

class WelcomePg extends StatefulWidget {
  const WelcomePg({super.key});

  @override
  State<WelcomePg> createState() => _WelcomePgState();
}

class _WelcomePgState extends State<WelcomePg> {
  List<Widget> wlcomepages = [
    const Wpg1(),
    const Wpg2(),
    const Wpg3(),
    const Wpg4(),
  ];

  late PageController _controller;
  late int _controllerDot;
  @override
  void initState() {
    super.initState();
    _controllerDot = 0;
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
            itemCount: wlcomepages.length,
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                _controllerDot = value;
              });
            },
            itemBuilder: (BuildContext context, currentInd) {
              return wlcomepages.elementAt(currentInd);
            }),
        Transform.translate(
          offset: Offset(MediaQuery.sizeOf(context).width * .35,
              MediaQuery.sizeOf(context).height * .95),
          child: DotsIndicator(
            position: _controllerDot,
            dotsCount: wlcomepages.length,
            decorator: DotsDecorator(
                color: Theme.of(context).primaryColorLight,
                activeColor: Theme.of(context).primaryColorDark,
                size: const Size.square(8),
                activeSize: const Size(35, 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Transform.translate(
            offset: Offset(MediaQuery.sizeOf(context).width * .77,
                MediaQuery.sizeOf(context).height * .93),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'LoginP');
                },
                child: Text(
                  _controllerDot == 3 ? "Saltar" : "Omitir",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ))),
      ]),
    );
  }
}
