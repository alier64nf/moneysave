import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneysave/src/presentation/providers/countdown_provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:moneysave/src/presentation/routes/routes.dart';
import 'package:moneysave/src/presentation/ui/themes/theme_ligth/theme_original_ligth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
  // GoogleFonts.config.allowRuntimeFetching = true;
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
          systemStatusBarContrastEnforced: true,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((_)=> CountdownProvider()))
      ],
      child: MaterialApp(
        routes: routes,
        initialRoute: 'WelcomeP',
        debugShowCheckedModeBanner: false,
        theme: themeOriginalLigth,
      ),
    );
  }
}
