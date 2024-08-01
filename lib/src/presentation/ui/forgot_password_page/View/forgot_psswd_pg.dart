import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../providers/countdown_provider.dart';

class ForgotPasswPg extends StatelessWidget {
  const ForgotPasswPg({super.key});

  @override
  Widget build(BuildContext context) {  
    final countdownProvider = Provider.of<CountdownProvider>(context);

    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar.large(
          toolbarHeight: 90,
          leadingWidth: 100,
          systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
              systemStatusBarContrastEnforced: true,
              statusBarIconBrightness: Brightness.light,
              statusBarColor: Colors.transparent),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.chevron_left),
                Text(
                  "Atrás",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.white),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          expandedHeight: MediaQuery.sizeOf(context).height * .2,
          flexibleSpace: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: SvgPicture.asset(
              'images/backpresentation.svg',
              fit: BoxFit.fill,
            ),
          )),
      SliverList(
          delegate: SliverChildListDelegate([
        Divider(
          color: Colors.transparent,
          height: MediaQuery.sizeOf(context).height * 0.10,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Recuperación de Contraseña',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Introduce tu email para recuperar tu Contraseña',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                constraints: BoxConstraints(
                    minHeight: 30,
                    minWidth: MediaQuery.sizeOf(context).width * 0.1,
                    maxHeight: 50,
                    maxWidth: MediaQuery.sizeOf(context).width * 0.85),
                suffixIcon: const Icon(Icons.remove_red_eye),
                hintText: 'correo@ejemplo.com',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.5, color: Theme.of(context).primaryColorLight),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.5, color: Theme.of(context).primaryColorDark),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
          Divider(
            color: Colors.transparent,
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          TextButton(
              onPressed: () {
                // Dialog.fullscreen()
                countdownProvider.resetCountdown();
                countdownProvider.startCountdown();
                Navigator.pushNamed(context, 'VerificationP');
              },
              style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size.square(10)),
                  fixedSize:
                      const MaterialStatePropertyAll(Size.fromWidth(180)),
                  backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).primaryColorDark),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: Text("Recuperar",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .labelLarge!
                      .copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)))
        ]),
      ]))
    ]));
  }
}
