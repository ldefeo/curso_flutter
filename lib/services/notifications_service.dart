

import 'package:flutter/material.dart';

class NotificationsService {

  static GlobalKey<ScaffoldMessengerState> messengerKey = GlobalKey<ScaffoldMessengerState>();

  static showNotificationError( String message) {

    final snackBar = SnackBar(
      backgroundColor: Colors.red.withOpacity(0.9),
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white
        ),
      )
    );

    messengerKey.currentState!.showSnackBar(snackBar); // mostramos el SnackBar del error

  }

  static showSnackbar( String message ) {

    final snackBar = SnackBar(
      content: Text( message, style: const TextStyle( color: Colors.white, fontSize: 20 ) )
    );

    messengerKey.currentState!.showSnackBar(snackBar);

  }


}