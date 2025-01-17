

import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:prueba_1/providers/side_menu_provider.dart';
import 'package:prueba_1/ui/views/no_page_found_view.dart';

class NoPageFoundHandlers {


  static Handler noPageFound = Handler(
    handlerFunc: (context, params) {

      Provider.of<SideMenuProvider>(context!, listen: false).setCurrentPage('/404');

      return const NoPageFoundView();
    }
  );
}