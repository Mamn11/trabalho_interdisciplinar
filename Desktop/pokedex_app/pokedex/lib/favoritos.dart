import 'pokemons.dart';

class FavoritesRepository {
  List<Pokemon> favorites = [];

  void addFavorite(Pokemon pokemon) {
    if (favorites.indexOf(pokemon) == -1) {
      favorites.add(pokemon);
    }
  }

  void removeFavorite(Pokemon pokemon) {
    favorites.remove(pokemon);
  }
}
