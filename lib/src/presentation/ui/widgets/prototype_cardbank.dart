import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardBankPrototype extends StatelessWidget {
  const CardBankPrototype(
      {super.key,
      this.dateExp,
      this.nameOwner,
      this.numAccount,
      this.nameBank,
      this.moneda,
      this.saldo = 0,
      required this.assetName});

  final double? saldo;
  final String? numAccount;
  final String? nameOwner;
  final String? nameBank;
  final String? moneda;
  final String? dateExp;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        // image: AssetImage(''),

        // color: Color.fromRGBO(224, 111, 58, .98),
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
        borderRadius: BorderRadius.all(Radius.circular(23)),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        assetName,
                        width: 50,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 20),
                  child: Text(
                    nameBank ?? '', // nombre del Propietario de la cuenta
                    style: Theme.of(context)
                        .primaryTextTheme
                        .labelLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Platinum',
                    style:
                        Theme.of(context).primaryTextTheme.labelLarge!.copyWith(
                              color: Colors.white,
                            ),
                  ),
                  Text(
                    numAccount == null || numAccount!.length < 6
                        ? ''
                        : '**** **** **** **${numAccount!.substring(numAccount!.length - 2, numAccount!.length)}', // Muestra los 2 ultimos digitos de la cuenta,
                    style:
                        Theme.of(context).primaryTextTheme.titleSmall!.copyWith(
                              color: Colors.white,
                            ),
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      saldo == null ? '0.0' : '$moneda  ${saldo.toString()}',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .titleSmall!
                          .copyWith(
                              color: Colors.white, overflow: TextOverflow.fade),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Exp',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .labelLarge!
                          .copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      dateExp ??
                          '', // Muestra los 2 ultimos digitos de la cuenta,
                      style: Theme.of(context)
                          .primaryTextTheme
                          .labelLarge!
                          .copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ]),
          ]),
    );
  }
}
