import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninPg extends StatelessWidget {
  const SigninPg({super.key});

  @override
  Widget build(BuildContext context) {
    // double heigthView = MediaQuery.sizeOf(context).height;

    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar.large(
          systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
              systemStatusBarContrastEnforced: true,
              statusBarIconBrightness: Brightness.light,
              statusBarColor: Colors.transparent),
          leading: const Text(""),
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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Registrarse",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.end,
            children: [
              SizedBox(
                child: Text(
                  "¡Bienvenido!.".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                child: Text(
                  "Registrate con un email valido",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        //CORREO FORMFIELD
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Direccion Correo',
              hintText: 'correo@ejemplo.com',
            ),
          ),
        ),
        //PASSWORD FORMFIELD
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye),
              labelText: 'Contraseña',
              hintText: 'Contraseña de 8 caracteres',
            ),
          ),
        ),

        //CONFIRM PASSWORD FORMFIELD
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscuringCharacter: '*',
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.check),
              labelText: 'Confirmar Contraseña',
              hintText: 'Escriba nuevamente la contraseña ',
            ),
          ),
        ),

        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'LoginP');
                  },
                  style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size.fromWidth(
                          MediaQuery.sizeOf(context).width * .6)),
                      minimumSize:
                          const MaterialStatePropertyAll(Size.square(10)),
                      // maximumSize:
                      //     const MaterialStatePropertyAll(Size.square(40)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(
                              color: Theme.of(context).primaryColorDark),
                          borderRadius: BorderRadius.circular(20)))),
                  child: Text("Iniciar Sesion",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold))),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      minimumSize:
                          const MaterialStatePropertyAll(Size.square(10)),
                      fixedSize: MaterialStatePropertyAll(Size.fromWidth(
                          MediaQuery.sizeOf(context).width * .6)),
                      backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).primaryColorDark),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  child: Text("Registrarse",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .labelLarge!
                          .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)))
            ],
          ),
        ),
        Center(
          child: Text("- O Registrate con -",
              style: Theme.of(context).primaryTextTheme.labelLarge!.copyWith(
                  color: Colors.black87, fontWeight: FontWeight.normal)),
        ),

        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'images/logoGoogle.svg',
                  fit: BoxFit.contain,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'images/logoApple.svg',
                  fit: BoxFit.contain,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'images/logoFacebook.svg',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Text("¿Entrar como Invitado?",
              style: Theme.of(context)
                  .primaryTextTheme
                  .labelLarge!
                  .copyWith(fontWeight: FontWeight.normal)),
        ),
      ]))
    ]));
  }
}
