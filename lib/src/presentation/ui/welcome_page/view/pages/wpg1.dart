import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Wpg1 extends StatelessWidget {
  const Wpg1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 4,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'images/backpresentation.svg',
                  fit: BoxFit.fill,
                ),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height * .12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.sizeOf(context).height * .04),
                          child: SvgPicture.asset(
                            'images/CarteraBitcoin.svg',
                            height: MediaQuery.sizeOf(context).height * .4,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: MediaQuery.sizeOf(context).height * .04),
                          child: Text("moneysave".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                        ),
                      ],
                    ))
              ],
            )),
        Expanded(
          child: Transform.translate(
            offset: Offset(0, MediaQuery.sizeOf(context).height * -.10),
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).width * .02),
                  child: Text("Hola !".toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * .02),
                  child: Text(
                    "MONEYSAVE ayuda ahorrar tiempo y reduce el estres al automatizar la gestion de las finanzas. Comienza a administrar tus finanzas con confianza y facilidad",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
