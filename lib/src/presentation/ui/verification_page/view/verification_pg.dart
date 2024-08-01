import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneysave/src/presentation/providers/countdown_provider.dart';
import 'package:provider/provider.dart';

class VerificationPg extends StatelessWidget {
  const VerificationPg({super.key});

  @override
  Widget build(BuildContext context) {
    // double heigthView = MediaQuery.sizeOf(context).height;
    final countdownProvider = Provider.of<CountdownProvider>(context);

    var email = "corre@gmail.com";

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
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Revise su correo',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Le hemos enviado un codigo al correo \n ${email.substring(0, 3)} ********* ${email.substring(email.length - 10)}',
            style: Theme.of(context)
                .primaryTextTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          color: Colors.transparent,
          height: MediaQuery.sizeOf(context).height * 0.04,
        ),
        Container(
          alignment: Alignment.center,
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
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'El Código expira en: ${context.select((CountdownProvider countdown) => countdown.timeLeftString)}',
            style: Theme.of(context)
                .primaryTextTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          color: Colors.transparent,
          height: MediaQuery.sizeOf(context).height * 0.04,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * .2),
          child: TextButton(
              onPressed: () {
                // Dialog.fullscreen()
                countdownProvider.resetCountdown();

                Navigator.pushNamed(context, 'NewPsswdP');
              },
              style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size.square(10)),
                  fixedSize: MaterialStatePropertyAll(
                      Size.fromWidth(MediaQuery.sizeOf(context).width * .6)),
                  backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).primaryColorDark),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: Text("Verificar",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .labelLarge!
                      .copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))),
        ),
        Divider(
          color: Colors.transparent,
          height: MediaQuery.sizeOf(context).height * 0.02,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * .2),
          child: TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, 'SigninP');
              },
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                      Size.fromWidth(MediaQuery.sizeOf(context).width * .6)),
                  minimumSize: const MaterialStatePropertyAll(Size.square(10)),
                  // maximumSize:
                  //     const MaterialStatePropertyAll(Size.square(40)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      side:
                          BorderSide(color: Theme.of(context).primaryColorDark),
                      borderRadius: BorderRadius.circular(20)))),
              child: Text("Reenviar Codigo",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.bold))),
        ),
      ]))
    ]));
  }
}
