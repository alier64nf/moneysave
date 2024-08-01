import 'package:flutter/material.dart';

import '../ui/forgot_password_page/View/forgot_psswd_pg.dart';
import '../ui/login_page/view/login_pg.dart';
import '../ui/new_psswd_page/view/new_psswd_pg.dart';
import '../ui/pages_tab/tab_pages.dart';
import '../ui/signin_page/view/signin_page.dart';
import '../ui/verification_page/view/verification_pg.dart';
import '../ui/welcome_page/view/welcome_pg.dart';

final routes = <String, WidgetBuilder>{
  'WelcomeP': (BuildContext context) => const WelcomePg(),
  'LoginP': (BuildContext context) => const LoginPg(),
  'SigninP': (BuildContext context) => const SigninPg(),
  'ForgotPsswdP': (BuildContext context) => const ForgotPasswPg(),
  'VerificationP': (BuildContext context) => const VerificationPg(),
  'NewPsswdP': (BuildContext context) => const NewPsswdPg(),
  'TabP': (BuildContext context) => const TabPage(),
};
