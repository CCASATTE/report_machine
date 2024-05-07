import 'package:report_machine/model/datos.dart';

class Reportes extends Datos{
String fecha;
Reportes(super.nombre,this.fecha,super.turno,super.equipo,super.numero);
}