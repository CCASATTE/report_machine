import 'package:flutter/material.dart';
import 'package:report_machine/view/screen/inicio.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _decoracionFondo(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Center(
              child: 
              _textoLgo(context)
              ),
            Container(
              height: 400.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80.0),topRight: Radius.circular(80.0)),
                boxShadow: [
                  BoxShadow(
                  color: Colors.black54,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 8.0
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Padding(
                     padding:  EdgeInsets.only(left: 30.0,right: 30.0),
                     child: Text(
                      'Inicio Sesión',
                      style:  TextStyle(
                        fontSize: 30,
                        color: Color(0XFF030047),
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.left,
                      ),
                   ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _casillaRun(),
                      _bottonScanner(context)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _textoLgo(BuildContext context){
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.05, bottom: screenHeight * 0.05, right: screenWidth * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage('assets/icons/carpeta.png'),
              height: screenHeight * 0.1, 
              width: screenWidth * 0.2, 
            ),
            Row(
              children: [
                Text(
                  '!Bienvenido a ',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: screenWidth * 0.06, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Report Machine¡',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: screenWidth * 0.06, 
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}


BoxDecoration _decoracionFondo(){
  return  const BoxDecoration(
    image:  DecorationImage(
      image: AssetImage('assets/logos/newfondo.png'),
      fit: BoxFit.cover,
      ),
     );
}



Widget _casillaRun(){
  return  Padding(
    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3)
          )
        ],
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        enabled: false,
         decoration: InputDecoration(
          labelText: 'RUN del Trabajador',
          labelStyle:  const TextStyle(
          color: Color.fromARGB(255, 126, 103, 103),
          ),
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:  const BorderSide(
          color: Color.fromARGB(255, 0, 0, 0)
         ),
       ),
         filled: true,
         fillColor: const Color.fromARGB(255, 255, 255, 255),
       ),
      
       style: const TextStyle(
       color: Colors.white,),
      ),
    ),
  );
}

Widget _bottonScanner(context){
  return  Column(
    children: [
       Padding(
         padding: const EdgeInsets.only(top: 30.0,bottom: 20.0),
         child: ElevatedButton(
                  onPressed: () { //LOGICA
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Inicio()),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 89, 173, 236),
                    elevation: 8.0,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(color:Colors.transparent),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.qr_code, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Escanear Código QR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
       ),
    ],
  );
}
