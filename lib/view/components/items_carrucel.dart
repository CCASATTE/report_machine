import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsCarrucel extends StatelessWidget {
  String btnNombre;
  ItemsCarrucel(this.btnNombre, {super.key});
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, bottom: 20.0,top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textoScreens(context,btnNombre)
          ] 
          
         )
        ],),
      ),
    );
  }
}

BoxDecoration _boxDecoration(context){
 return BoxDecoration(
  color: const Color.fromARGB(255, 89, 173, 236),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const <BoxShadow> [
    BoxShadow(
      color: Colors.black45,
      offset: Offset(4.0, 4.0),
      blurRadius: 10.0
    )
  ]

 );
}

Widget _textoScreens(context,String nombre){
  return Column(
    children: [const Icon(
      Icons.library_books,
      color: Colors.white,
      size: 30.0,
      ),
      Text( nombre,
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),
          
      ),
    ],
  );
}