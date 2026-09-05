import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'config/theme.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/auth/onboarding_screen.dart';
import 'screens/navigation/root_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const RoyaConstellations());
}

class RoyaConstellations extends StatelessWidget {
  const RoyaConstellations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roya Constellations',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: RoyaColors.deepSpace,
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
