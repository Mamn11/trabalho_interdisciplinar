import 'package:flutter/material.dart';
import 'package:pokedex/equipe.dart';
import 'package:pokedex/equipe_page.dart';
import 'favoritos_page.dart';
import 'home_page.dart';
import 'favoritos.dart';


FavoritesRepository favoritesRepo = FavoritesRepository();
Equipe equipeRepo = Equipe();


Map<String, WidgetBuilder> routes() {
 return {
 '/': (context) => HomePage(),
 '/favoritos': (context) => FavoritosPage(favoritesRepo: favoritesRepo),
 '/equipe': (context) => EquipePage(equipeRepo: equipeRepo),
 };
}