import 'package:flutter/material.dart';
import 'package:report_machine/model/persona.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliverBar extends StatelessWidget {
  const SliverBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
       leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
          shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
            bottomRight: Radius.circular(80.0)
          )),
          title: _customAppBar(),
          backgroundColor: const Color.fromARGB(255, 89, 173, 236),
          expandedHeight: 200,
          pinned: true,
          forceElevated: true,
          elevation: 2,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(children: [
             const  Spacer(),
              _textHeader(context)
            ],),
          )
    );
  }
}

Widget _customAppBar() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Datos del Usuario',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
            Row(
              children: [
                 IconButton(
                    icon: SvgPicture.asset('assets/icons/search.svg'),
                    onPressed: (){},
                    iconSize: 40.0,
             ),
              IconButton(
                  icon: SvgPicture.asset('assets/icons/filter.svg'),
                  onPressed: (){},
                  iconSize: 40.0,
         ),
              ],
            )
      ],
         );
}
Widget _textHeader(context) {
  Persona reportes  = Persona(195336407,'CASATTE LESSEN CARLOS ALBERTO','SEGUNDO', 'TRACTO', 280);
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
           const Padding(
             padding:  EdgeInsets.only(left: 5.0, right: 5.0),
             child:  CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/logos/person.png'),
              ),
           ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hola,',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.bold,
                  )
                ),
                Text(
                  reportes.nombre,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.bold,
                  )
                ),
                Text(
                    'Te encuentras en el turno',
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    reportes.turno,
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                Text(
                    'Operando el Equipo ${reportes.equipo}',
                     style: TextStyle(
                     color: Colors.white,
                     fontSize: MediaQuery.of(context).size.width * 0.042,
                     fontWeight: FontWeight.bold,
                  )
                ),
                Text(
                    'N° ${reportes.numero}',
                     style: TextStyle(
                     color: Colors.white,
                     fontSize: MediaQuery.of(context).size.width * 0.042,
                     fontWeight: FontWeight.bold,
                  )
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}