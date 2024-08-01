import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/prototype_cardbank.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            leading: const Text(" "),
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: MediaQuery.sizeOf(context).height * 0.48,
            flexibleSpace: PreferredSize(
              preferredSize: Size(MediaQuery.sizeOf(context).width, 0),
              child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  width: MediaQuery.sizeOf(context).width,
                  child: Stack(children: [
                    Transform.scale(
                      scale: 1.3,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.92),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(
                                  MediaQuery.sizeOf(context).width * 0.2),
                              bottomRight: Radius.circular(
                                  MediaQuery.sizeOf(context).width * 0.6)),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(MediaQuery.sizeOf(context).width * -.35,
                          MediaQuery.sizeOf(context).height * -.07),
                      child: Transform.rotate(
                        angle: 45,
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorDark,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(
                                    MediaQuery.sizeOf(context).width * 0.6),
                                topRight: Radius.circular(
                                    MediaQuery.sizeOf(context).width * 0.6)),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 50.0, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const CircleAvatar(
                                    maxRadius: 30,
                                    minRadius: 24,
                                    backgroundColor: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hola,',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(color: Colors.white),
                                      ),
                                      Text(
                                        'Madeleine',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.bell,
                                    size: 24,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            'Tarjetas',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * .3,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),

                                  // width: MediaQuery.sizeOf(context).width * .05,
                                  height: MediaQuery.sizeOf(context).height * 1,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromRGBO(251, 251, 251, .7),
                                          Color.fromRGBO(189, 189, 191, .16),
                                          Color.fromRGBO(163, 165, 177, .65),
                                          Color.fromRGBO(184, 185, 196, .59),
                                        ],
                                        stops: [
                                          0,
                                          .01,
                                          1,
                                          1
                                        ]),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: const Icon(FontAwesomeIcons.plus),
                                ),
                              ),
                              Expanded(
                                  flex: 5,
                                  child: PageView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        return GestureDetector(
                                            onTap: () => {},
                                            child: Transform.translate(
                                              offset: const Offset(35, 0),
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    right: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        .05),
                                                child: const CardBankPrototype(
                                                  assetName: 'images/visa.svg',
                                                  nameBank: 'BankofAmerica',
                                                  numAccount:
                                                      "9878 7890 6755 6778",
                                                  dateExp: '09/24',
                                                  moneda: '\$',
                                                ),
                                              ),
                                            ));
                                      }))
                            ],
                          ),
                        )
                      ],
                    ),
                  ])),
            )),
        body: CustomScrollView(
          anchor: 100 / (MediaQuery.sizeOf(context).height * .6),
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.topLeft,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Grupos',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.17,
                decoration: const BoxDecoration(),
                padding: const EdgeInsets.all(8),
                child: Swiper(
                  viewportFraction: .25,
                  loop: false,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(8),
                      width: MediaQuery.sizeOf(context).width * .4,
                      height: MediaQuery.sizeOf(context).height * .2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Theme.of(context).dividerColor)),
                      child: Column(children: [
                        const Icon(
                          FontAwesomeIcons.gaugeHigh,
                          color: Colors.blue,
                        ),
                        Text(
                          'Mas',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ]),
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Otros',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ]))
          ],
        ));
  }
}


/* Container(
                              width: MediaQuery.sizeOf(context).width * .1,
                              height: MediaQuery.sizeOf(context).height * 1,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(251, 251, 251, .7),
                                      Color.fromRGBO(189, 189, 191, .16),
                                      Color.fromRGBO(163, 165, 177, .65),
                                      Color.fromRGBO(184, 185, 196, .59),
                                    ],
                                    stops: [
                                      0,
                                      .01,
                                      1,
                                      1
                                    ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(23)),
                              ),
                              margin: const EdgeInsets.only(right: 20),
                              child: const Icon(FontAwesomeIcons.plus),
                            ),
                            
                            
                            
                            
                            Row(
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * .1,
                              height: MediaQuery.sizeOf(context).height * 1,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(251, 251, 251, .7),
                                      Color.fromRGBO(189, 189, 191, .16),
                                      Color.fromRGBO(163, 165, 177, .65),
                                      Color.fromRGBO(184, 185, 196, .59),
                                    ],
                                    stops: [
                                      0,
                                      .01,
                                      1,
                                      1
                                    ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(23)),
                              ),
                              margin: const EdgeInsets.only(right: 0),
                              child: const Icon(FontAwesomeIcons.plus),
                            ),
                            Swiper(
                              scrollDirection: Axis.horizontal,
                              duration: 550,
                              autoplayDelay:
                                  kDefaultAutoplayTransactionDuration,
                              curve: Curves.easeInQuart,
                              layout: SwiperLayout.STACK,
                              itemHeight: MediaQuery.sizeOf(context).height,
                              itemWidth: MediaQuery.sizeOf(context).width,
                              itemCount: 9,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                    onTap: () => {},
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal:
                                              MediaQuery.sizeOf(context).width *
                                                  .05),
                                      child: const CardBankPrototype(
                                        assetName: 'images/visa.svg',
                                        nameBank: 'BankofAmerica',
                                        numAccount: "9878 7890 6755 6778",
                                        dateExp: '09/24',
                                        moneda: '\$',
                                      ),
                                    ));
                              },
                            ),
                          ],
                        )
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            */
