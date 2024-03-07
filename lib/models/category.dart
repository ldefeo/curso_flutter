import 'dart:convert';

class Categoria {
    String id;
    String nombre;
    _Usuario usuario;

    Categoria({
        required this.id,
        required this.nombre,
        required this.usuario,
    });

    factory Categoria.fromJson(String str) => Categoria.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Categoria.fromMap(Map<String, dynamic> json) => Categoria(
        id: json["_id"],
        nombre: json["nombre"],
        usuario: _Usuario.fromMap(json["usuario"]),
    );

    Map<String, dynamic> toMap() => {
        "_id": id,
        "nombre": nombre,
        "usuario": usuario.toMap(),
    };

    @override
  String toString() {  // reimplementamos el metodo toString()
    return 'Categoria: $nombre';
  }
}

class _Usuario {
    String id;
    String nombre;

    _Usuario({
        required this.id,
        required this.nombre,
    });

    factory _Usuario.fromJson(String str) => _Usuario.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory _Usuario.fromMap(Map<String, dynamic> json) => _Usuario(
        id: json["_id"],
        nombre: json["nombre"],
    );

    Map<String, dynamic> toMap() => {
        "_id": id,
        "nombre": nombre,
    };
}