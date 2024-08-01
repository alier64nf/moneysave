import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wpg4 extends StatelessWidget {
  const Wpg4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'images/backpresentation.svg',
                    fit: BoxFit.fill,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height * .04),
                    child: SvgPicture.asset(
                      'images/Comparte.svg',
                      fit: BoxFit.cover,
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
                    child: Text("Divide".toUpperCase(),
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
                      "Asigna facilmente gastos a grupos especificos, como viajes, salidas nocturnas o proyectos compartidos",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * .02),
                    child: Text(
                      "Envia solicitudes de pago a otros miembros del grupo, incluso a quien no tenga la aplicacion",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * .02),
                    child: Text(
                      "Divide los gastos equitativamente o personaliza las divisiones segun preferencias de cada miembro",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * .02),
                    child: Text(
                      "Recibe notificaciones cuando se agreguen nuevos gastos, se aprueben nuevas solicitudes de pago o se realicen pagos",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * .02),
                    child: Text(
                      "Manten la transparencia y rendicion de cuentas dentro de los grupos",
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
