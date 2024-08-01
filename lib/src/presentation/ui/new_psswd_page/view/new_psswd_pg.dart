import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPsswdPg extends StatelessWidget {
  const NewPsswdPg({super.key});

  @override
  Widget build(BuildContext context) {
    // double heigthView = MediaQuery.sizeOf(context).height;

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
            'Nueva Contraseña',
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
            'Por favor introduzca la nueva contraseña',
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
              constraints: const BoxConstraints(
                  minHeight: 30, minWidth: 100, maxHeight: 50, maxWidth: 350),
              suffixIcon: const Icon(Icons.remove_red_eye),
              hintText: 'Contraseña de 8 caracteres',
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
          height: MediaQuery.sizeOf(context).height * 0.08,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * .2),
          child: TextButton(
              onPressed: () {
                // Dialog.fullscreen()
                Navigator.pushNamed(context, 'LoginP');
              },
              style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size.square(10)),
                  fixedSize: MaterialStatePropertyAll(
                      Size.fromWidth(MediaQuery.sizeOf(context).width * .6)),
                  backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).primaryColorDark),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: Text("Resetear",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .labelLarge!
                      .copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))),
        ),
      ]))
    ]));
  }
}
