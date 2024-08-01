import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wpg2 extends StatelessWidget {
  const Wpg2({super.key});

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
                      bottom: MediaQuery.sizeOf(context).height * .08),
                  child: SvgPicture.asset(
                    'images/GirlAhorrando.svg',
                    fit: BoxFit.fill,
                  ),
                )
              ],
            )),
        Expanded(
          child: Transform.translate(
            offset: Offset(0, MediaQuery.sizeOf(context).height * -.07),
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).width * .02),
                  child: Text("Ahorra".toUpperCase(),
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
                    "Establece presupuestos realisatas para diferentes categorias, recibe alertas cuando te acerques a los limites y ajusta los presupuestos segun sea necesario",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                  // color: Colors.amber,
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * .02),
                  child: Text(
                    "Establece objetivos financieros, crea planes personalizados y recibe recordatorios regulares para mantenerte motivado",
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
