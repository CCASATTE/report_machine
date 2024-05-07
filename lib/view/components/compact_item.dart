import 'package:flutter/material.dart';
import 'package:report_machine/model/reportes.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CompactItem extends StatelessWidget {
 Reportes reporte;
 CompactItem(this.reporte, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 100.0,
        child:  Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
               children: [
                IconButton(
                  onPressed: (){},
                   icon: SvgPicture.asset('assets/icons/eye.svg'),
                  ),
                  _listaReportes(context),
               ],
             ),             
              Row(
                children: [
                  _listaReporteRigth(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

BoxDecoration _boxDecoration(){
    return  BoxDecoration(
      color: Colors.white,
      borderRadius:  BorderRadius.circular(10.0),
      boxShadow: const <BoxShadow> [
        BoxShadow(
          color: Colors.black54,
          offset: Offset(3.0, 3.0),
          blurRadius: 8.0
        )
      ]

    );
  }
Widget _listaReportes(context){
  return  Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          reporte.turno,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 3.0,),
        Text(
          reporte.equipo,
          style: Theme.of(context).textTheme.titleLarge
        ),
        const SizedBox(height: 3.0,),
        Text(
          'N° ${reporte.numero}',
          style: Theme.of(context).textTheme.titleLarge,
        )
      ],
    ),
  );
}
Widget _listaReporteRigth(context){
  return Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          reporte.fecha,
          style: Theme.of(context).textTheme.titleLarge,
        )
      ],
    );
}
}