import 'package:flutter/material.dart';
import 'package:report_machine/model/reportes.dart';
import 'package:report_machine/view/components/carrucel.dart';
import 'package:report_machine/view/components/list_recientes.dart';
import 'package:report_machine/view/components/sliverbar.dart';
class Inicio extends StatelessWidget {
  const Inicio({super.key});
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
    backgroundColor: const Color.fromARGB(255, 241, 234, 234),
    body :CustomScrollView(
      slivers: [
        const SliverBar(),
        SliverToBoxAdapter(
          child:  Container(
            color: const Color.fromARGB(255, 241, 234, 234),
            child: Column(
              children: [
                _form(context),
                _recientes(context)
              ],
            ),
          )),
      ],
    )
    );
}
}


Widget _form(context){
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       SizedBox(height: 10.0,),
       Carrucel()
    ],
  );
}

Widget _recientes(context){
  List<Reportes> recientesReportes = [
   Reportes('Carlos','20/04/2024', 'SEGUNDO', 'TRACTO', 255),
   Reportes('Carlos','20/04/2024', 'SEGUNDO', 'TRACTO', 255),
   Reportes('Carlos','20/04/2024', 'SEGUNDO', 'TRACTO', 255),
   Reportes('Carlos','20/04/2024', 'SEGUNDO', 'TRACTO', 255),
   Reportes('Carlos','20/04/2024', 'SEGUNDO', 'TRACTO', 255),
   Reportes('Carlos','20/04/2024', 'SEGUNDO', 'TRACTO', 255),
   Reportes('Carlos','20/04/2024', 'SEGUNDO', 'TRACTO', 255),
   Reportes('Carlos','20/04/2024', 'SEGUNDO', 'TRACTO', 255),
  ];
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0,top: 5.0,bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Reportes Recientes:',
              style: TextStyle(
              color: const Color.fromARGB(255, 87, 89, 90),
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold
              ),
            ),
            GestureDetector(
              onTap: (){
                //logica
              },
              child:  Text(
              'Ver Todo',
              style: TextStyle(
              color: const Color.fromARGB(255, 0, 49, 88),
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold
              ),
            ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListRecientes(recientesReportes),
      ),
    ],
  );
}
