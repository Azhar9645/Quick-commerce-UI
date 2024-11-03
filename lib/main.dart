import 'package:bw_assignment1/presentation/screens/bottomnav_bar.dart';
import 'package:bw_assignment1/presentation/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// Import your screen widgets here
import 'package:bw_assignment1/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BW ASS1',
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.quicksandTextTheme(),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Define the initial route and the available named routes
        initialRoute: '/',
        routes: {
          '/': (context) => BottomNavBarScreen(), // Initial screen
          '/home': (context) => const HomeScreen(),
          '/notification': (context) =>  NotificationScreen(),
        },
      ),
    );
  }
}
