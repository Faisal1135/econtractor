import 'package:econtractor/pages/home_screen.dart';
import 'package:econtractor/pages/login.dart';
import 'package:econtractor/pages/register_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eContractor',
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: GoogleFonts.poppins(),
            bodyText2: GoogleFonts.montserrat()),
        primaryColor: Colors.redAccent,
        accentColor: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
      routes: {
        RegisterScreen.routeName: (context) => RegisterScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen()
      },
    );
  }
}
