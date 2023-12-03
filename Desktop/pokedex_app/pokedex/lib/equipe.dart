import 'pokemons.dart';

class Equipe {
  List<Pokemon> equipe = [];

  void addEquipe(Pokemon pokemon) {
    equipe.add(pokemon);
  }
  void removeEquipe(Pokemon pokemon) {
    equipe.remove(pokemon);
  }
}