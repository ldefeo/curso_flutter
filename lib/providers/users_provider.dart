


import 'package:flutter/foundation.dart';
import 'package:prueba_1/api/cafe_api.dart';
import 'package:prueba_1/models/http/users_response.dart';
import 'package:prueba_1/models/usuario.dart';

class UsersProvider extends ChangeNotifier {

  List<Usuario> users = [];
  bool isLoading = false;
  bool ascending = true;
  int? sortColumnIndex;  // para qu aparezca la flechita de ascendente o descendente

  UsersProvider() {
    getUsers();
  }


  getUsers() async {

    final resp = await CafeApi.httpGet('/usuarios?limite=100&desde=0');
    final usersResponse = UsersResponse.fromMap(resp);

    users = [...usersResponse.usuarios]; // para dejar las categorias que ya teniamos y agregarle las nuevas


    notifyListeners();

  }

  void sort<T>( Comparable<T> Function(Usuario user) getField) {  // para comparar los campos de una columna x y ordenarlos

    users.sort( (a,b) {

        final aValue = getField(a);
        final bValue = getField(b);

        return ascending
        ? Comparable.compare(aValue, bValue)
        : Comparable.compare(bValue, aValue);
        
      }
    );

    ascending = !ascending;

    notifyListeners();
  }

}