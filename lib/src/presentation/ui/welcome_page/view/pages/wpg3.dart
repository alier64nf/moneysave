import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wpg3 extends StatelessWidget {
  const Wpg3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
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
                      child: Stack(
                        children: [
                          Transform.translate(
                            offset: Offset(
                              MediaQuery.sizeOf(context).width * .08,
                              MediaQuery.sizeOf(context).height * -.07,
                            ),
                            child: Transform.rotate(
                              angle: -25,
                              child: Container(
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.sizeOf(context).height * .0),
                                child: SvgPicture.asset(
                                  'images/Operadora.svg',
                                  height:
                                      MediaQuery.sizeOf(context).height * .27,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(
                                MediaQuery.sizeOf(context).width * .06,
                                MediaQuery.sizeOf(context).height * .15),
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height * .0),
                              child: Transform.flip(
                                flipX: true,
                                child: SvgPicture.asset(
                                  'images/Bank.svg',
                                  height:
                                      MediaQuery.sizeOf(context).height * .27,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              )),
          Expanded(
            child: Transform.translate(
              offset: Offset(0, MediaQuery.sizeOf(context).height * -.09),
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.sizeOf(context).width * .02),
                    child: Text("Banco".toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * .02),
                    child: Text(
                      "Integracion bancaria, conecta la aplicacion a tus cuentas bancarias para una sincronizacion automatica y una gestion sin problemas",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * .02),
                    child: Text(
                      "Seguridad de grado bancario. Protege tus datos financieros de cifrado de alta seguridad y autenticacion de dos factores",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * .02),
                    child: Text(
                      "Disfruta de tranquildiad sabiendo que tus finanzas estan seguras y bajo control.",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]);
  }
}
