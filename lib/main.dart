import 'package:flutter/material.dart';
import 'package:report_machine/view/screen/splash_screen.dart';
import 'package:flutter/services.dart';

void main()  => runApp(const MyApp(),

);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return  MaterialApp(
      title: 'Report Machine',
      debugShowCheckedModeBanner: false,
      home: const  SplashScreen(),
      theme: ThemeData(
        //colores de fondo
        primaryColor: const Color(0xff5f5fff),
        hoverColor: const Color(0xff030047),
        highlightColor:  const Color(0xffb7b7d2),
        //colores a las letras
        textTheme:  TextTheme(
          displayLarge:  TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.045,
            fontWeight: FontWeight.bold,
            color: const Color(0XFF030047)
         ),
          displayMedium:  TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.045,
          fontWeight: FontWeight.bold,
          color: const Color(0xff5f5fff)
         ),
         bodyLarge:  TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.035,
          fontWeight: FontWeight.normal,
          color: Colors.grey
         ),
         titleLarge: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.038,
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(234, 105, 101, 101)
         )
        )
      ),
    );
  }
}
