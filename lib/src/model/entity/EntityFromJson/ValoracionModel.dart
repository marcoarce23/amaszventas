
import 'package:virtual_match/src/model/entity/IEntity.dart';

class ValoracionModel implements IEntityJson {
  int idClasificador;
  String nombre;
  int estado;

  ValoracionModel({this.idClasificador, this.nombre, this.estado});

  fromJson(Map<String, dynamic> json) => new ValoracionModel(
        idClasificador: json["idClasificador"],
        nombre: json["nombre"],
        estado: json["estado"],
      );
}
