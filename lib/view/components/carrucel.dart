import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:report_machine/view/components/items_carrucel.dart';

class Carrucel extends StatelessWidget {
  const Carrucel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 240.0,
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.85,
      ),
      items:  [
        GestureDetector(
          onTap: (){
           
          },
          child: ItemsCarrucel('Crear Reporte'),
        ),
         GestureDetector(
          onTap: (){

          },
          child: ItemsCarrucel('Listado de Reporte')
        ),
      ],
    );
  }
}