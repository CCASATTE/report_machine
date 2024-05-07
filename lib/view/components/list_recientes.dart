import 'package:flutter/material.dart';
import 'package:report_machine/model/reportes.dart';
import 'package:report_machine/view/components/compact_item.dart';

// ignore: must_be_immutable
class ListRecientes extends StatelessWidget {
   // ignore: non_constant_identifier_names
   List<Reportes> Reporte;

   ListRecientes(this.Reporte, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: Reporte.length,
      itemBuilder: (context, index) =>  CompactItem(Reporte[index]) ,
     );
  }
}