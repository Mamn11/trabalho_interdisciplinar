import 'package:flutter/material.dart';
import 'evolucoes.dart';
import 'home_page.dart';

class Evolution {
  final String name;
  final String imageUrl;

  Evolution({required this.name, required this.imageUrl});
}

class PokemonEvolutionData {
  List<Evolution> bulbasaurEvolutions = [
    Evolution(name: 'Bulbasaur', imageUrl: 'assets/img/001.png'),
    Evolution(name: 'Ivysaur', imageUrl: 'assets/img/002.png'),
    Evolution(name: 'Venusaur', imageUrl: 'assets/img/003.png'),
  ];

  List<Evolution> charmanderEvolutions = [
    Evolution(name: 'Charmander', imageUrl: 'assets/img/004.png'),
    Evolution(name: 'Charmeleon', imageUrl: 'assets/img/005.png'),
    Evolution(name: 'Charizard', imageUrl: 'assets/img/006.png'),
  ];

  List<Evolution> squirtleEvolutions = [
    Evolution(name: 'Squirtle', imageUrl: 'assets/img/007.png'),
    Evolution(name: 'Warturtle', imageUrl: 'assets/img/008.png'),
    Evolution(name: 'Blastoise', imageUrl: 'assets/img/009.png'),
  ];

  List<Evolution> caterpieEvolutions = [
    Evolution(name: 'Cartepie', imageUrl: 'assets/img/010.png'),
    Evolution(name: 'Metapod', imageUrl: 'assets/img/011.png'),
    Evolution(name: 'Butterfree', imageUrl: 'assets/img/012.png'),
  ];

  List<Evolution> weedleEvolutions = [
    Evolution(name: 'Widdle', imageUrl: 'assets/img/013.png'),
    Evolution(name: 'Kakuna', imageUrl: 'assets/img/014.png'),
    Evolution(name: 'Beedrill', imageUrl: 'assets/img/015.png'),
  ];

  List<Evolution> pidgeyEvolutions = [
    Evolution(name: 'Pidgey', imageUrl: 'assets/img/016.png'),
    Evolution(name: 'Pidgeotto', imageUrl: 'assets/img/017.png'),
    Evolution(name: 'Pidgeot', imageUrl: 'assets/img/018.png'),
  ];

  List<Evolution> rattataEvolutions = [
    Evolution(name: 'Ratata', imageUrl: 'assets/img/019.png'),
    Evolution(name: 'Raticate', imageUrl: 'assets/img/020.png'),
  ];

  List<Evolution> spearowEvolutions = [
    Evolution(name: 'Spearow', imageUrl: 'assets/img/021.png'),
    Evolution(name: 'Fearow', imageUrl: 'assets/img/022.png'),
  ];

  List<Evolution> ekansEvolutions = [
    Evolution(name: 'Ekans', imageUrl: 'assets/img/023.png'),
    Evolution(name: 'Arbok', imageUrl: 'assets/img/024.png'),
  ];

  List<Evolution> pikachuEvolutions = [
    Evolution(name: 'PIkachu', imageUrl: 'assets/img/025.png'),
    Evolution(name: 'Raichu', imageUrl: 'assets/img/026.png'),
  ];

  List<Evolution> sandshrewEvolutions = [
    Evolution(name: 'Sandshrew', imageUrl: 'assets/img/027.png'),
    Evolution(name: 'Sandslash', imageUrl: 'assets/img/028.png'),
  ];

  List<Evolution> nidoranFEvolutions = [
    Evolution(name: 'Nidorin', imageUrl: 'assets/img/029.png'),
    Evolution(name: 'Nidorina', imageUrl: 'assets/img/030.png'),
    Evolution(name: 'Nidoqueen', imageUrl: 'assets/img/031.png'),
  ];

  List<Evolution> nidoranMEvolutions = [
    Evolution(name: 'Nidorin', imageUrl: 'assets/img/032.png'),
    Evolution(name: 'Nidorino', imageUrl: 'assets/img/033.png'),
    Evolution(name: 'Nidoking', imageUrl: 'assets/img/034.png'),
  ];

  List<Evolution> clefairyEvolutions = [
    Evolution(name: 'Clefary', imageUrl: 'assets/img/035.png'),
    Evolution(name: 'Clefable', imageUrl: 'assets/img/036.png'),
  ];

  List<Evolution> vulpixEvolutions = [
    Evolution(name: 'Vulpix', imageUrl: 'assets/img/037.png'),
    Evolution(name: 'Ninetales', imageUrl: 'assets/img/038.png'),
  ];

  List<Evolution> jigglypuffEvolutions = [
    Evolution(name: 'Jigglypuff', imageUrl: 'assets/img/039.png'),
    Evolution(name: 'Wigglytuff', imageUrl: 'assets/img/040.png'),
  ];

  List<Evolution> zubatEvolutions = [
    Evolution(name: 'Zubat', imageUrl: 'assets/img/041.png'),
    Evolution(name: 'Golbat', imageUrl: 'assets/img/042.png'),
  ];

  List<Evolution> oddishEvolutions = [
    Evolution(name: 'Odish', imageUrl: 'assets/img/043.png'),
    Evolution(name: 'Gloom', imageUrl: 'assets/img/044.png'),
    Evolution(name: 'Vileplume', imageUrl: 'assets/img/045.png'),
  ];

  List<Evolution> parasEvolutions = [
    Evolution(name: 'Paras', imageUrl: 'assets/img/046.png'),
    Evolution(name: 'Parasect', imageUrl: 'assets/img/047.png'),
  ];

  List<Evolution> venonatEvolutions = [
    Evolution(name: 'Venonat', imageUrl: 'assets/img/048.png'),
    Evolution(name: 'Venomoth', imageUrl: 'assets/img/049.png'),
  ];

  List<Evolution> diglettEvolutions = [
    Evolution(name: 'Digglet', imageUrl: 'assets/img/050.png'),
    Evolution(name: 'Dugtrio', imageUrl: 'assets/img/051.png'),
  ];

  List<Evolution> meowthEvolutions = [
    Evolution(name: 'Meowth', imageUrl: 'assets/img/052.png'),
    Evolution(name: 'Persian', imageUrl: 'assets/img/053.png'),
  ];

  List<Evolution> psyduckEvolutions = [
    Evolution(name: 'Psyduck', imageUrl: 'assets/img/054.png'),
    Evolution(name: 'Golduck', imageUrl: 'assets/img/055.png'),
  ];

  List<Evolution> mankeyEvolutions = [
    Evolution(name: 'Mankey', imageUrl: 'assets/img/056.png'),
    Evolution(name: 'Primeape', imageUrl: 'assets/img/057.png'),
  ];

  List<Evolution> growlitheEvolutions = [
    Evolution(name: 'Growlithe', imageUrl: 'assets/img/058.png'),
    Evolution(name: 'Arcanine', imageUrl: 'assets/img/059.png'),
  ];

  List<Evolution> poliwagEvolutions = [
    Evolution(name: 'Poliwag', imageUrl: 'assets/img/060.png'),
    Evolution(name: 'Poliwhirl', imageUrl: 'assets/img/061.png'),
    Evolution(name: 'Poliwrath', imageUrl: 'assets/img/062.png'),
  ];

  List<Evolution> abraEvolutions = [
    Evolution(name: 'Abra', imageUrl: 'assets/img/063.png'),
    Evolution(name: 'Kadabra', imageUrl: 'assets/img/064.png'),
    Evolution(name: 'Alakazam', imageUrl: 'assets/img/065.png'),
  ];

  List<Evolution> machopEvolutions = [
    Evolution(name: 'Machop', imageUrl: 'assets/img/066.png'),
    Evolution(name: 'Machoke', imageUrl: 'assets/img/067.png'),
    Evolution(name: 'Machamp', imageUrl: 'assets/img/068.png'),
  ];

  List<Evolution> bellsproutEvolutions = [
    Evolution(name: 'Bellsprout', imageUrl: 'assets/img/069.png'),
    Evolution(name: 'Weepinbell', imageUrl: 'assets/img/070.png'),
    Evolution(name: 'Victreebel', imageUrl: 'assets/img/071.png'),
  ];

  List<Evolution> tentacoolEvolutions = [
    Evolution(name: 'Tentacool', imageUrl: 'assets/img/072.png'),
    Evolution(name: 'Tentacruel', imageUrl: 'assets/img/073.png'),
  ];

  List<Evolution> geodudeEvolutions = [
    Evolution(name: 'Geodude', imageUrl: 'assets/img/074.png'),
    Evolution(name: 'Graveler', imageUrl: 'assets/img/075.png'),
    Evolution(name: 'Golem', imageUrl: 'assets/img/076.png'),
  ];

  List<Evolution> ponytaEvolutions = [
    Evolution(name: 'Rapidash', imageUrl: 'assets/img/077.png'),
    Evolution(name: 'Rapidash', imageUrl: 'assets/img/078.png'),
  ];

  List<Evolution> slowpokeEvolutions = [
    Evolution(name: 'Slowpoke', imageUrl: 'assets/img/079.png'),
    Evolution(name: 'Slowbro', imageUrl: 'assets/img/080.png'),
  ];

  List<Evolution> magnemiteEvolutions = [
    Evolution(name: 'Magnemite', imageUrl: 'assets/img/081.png'),
    Evolution(name: 'Magneton', imageUrl: 'assets/img/082.png'),
  ];

  List<Evolution> doduoEvolutions = [
    Evolution(name: 'Doduo', imageUrl: 'assets/img/084.png'),
    Evolution(name: 'Dodrio', imageUrl: 'assets/img/085.png'),
  ];

  List<Evolution> seelEvolutions = [
    Evolution(name: 'Seel', imageUrl: 'assets/img/086.png'),
    Evolution(name: 'Dewgong', imageUrl: 'assets/img/087.png'),
  ];

  List<Evolution> grimerEvolutions = [
    Evolution(name: 'Grimmer', imageUrl: 'assets/img/088.png'),
    Evolution(name: 'Muk', imageUrl: 'assets/img/089.png'),
  ];

  List<Evolution> shellderEvolutions = [
    Evolution(name: 'Shelder', imageUrl: 'assets/img/090.png'),
    Evolution(name: 'Cloyster', imageUrl: 'assets/img/097.png'),
  ];

  List<Evolution> gastlyEvolutions = [
    Evolution(name: 'Gastly', imageUrl: 'assets/img/092.png'),
    Evolution(name: 'Haunter', imageUrl: 'assets/img/093.png'),
    Evolution(name: 'Gengar', imageUrl: 'assets/img/094.png'),
  ];

  List<Evolution> drowzeeEvolutions = [
    Evolution(name: 'Drowzee', imageUrl: 'assets/img/096.png'),
    Evolution(name: 'Hypno', imageUrl: 'assets/img/097.png'),
  ];

  List<Evolution> krabbyEvolutions = [
    Evolution(name: 'Krabby', imageUrl: 'assets/img/098.png'),
    Evolution(name: 'Kingler', imageUrl: 'assets/img/099.png'),
  ];

  List<Evolution> voltorbEvolutions = [
    Evolution(name: 'Voltorb', imageUrl: 'assets/img/100.png'),
    Evolution(name: 'Electrode', imageUrl: 'assets/img/101.png'),
  ];

  List<Evolution> exeggcuteEvolutions = [
    Evolution(name: 'Exeggcute', imageUrl: 'assets/img/102.png'),
    Evolution(name: 'Exeggutor', imageUrl: 'assets/img/103.png'),
  ];

  List<Evolution> cuboneEvolutions = [
    Evolution(name: 'Cubone', imageUrl: 'assets/img/104.png'),
    Evolution(name: 'Marowak', imageUrl: 'assets/img/105.png'),
  ];

  List<Evolution> koffingEvolutions = [
    Evolution(name: 'Koffing', imageUrl: 'assets/img/109.png'),
    Evolution(name: 'Weezing', imageUrl: 'assets/img/110.png'),
  ];

  List<Evolution> rhyhornEvolutions = [
    Evolution(name: 'Rhyhorn', imageUrl: 'assets/img/111.png'),
    Evolution(name: 'Rhydon', imageUrl: 'assets/img/112.pngn'),
  ];

  List<Evolution> horseaEvolutions = [
    Evolution(name: 'Horsea', imageUrl: 'assets/img/116.png'),
    Evolution(name: 'Seadra', imageUrl: 'assets/img/117.png'),
  ];

  List<Evolution> goldeenEvolutions = [
    Evolution(name: 'Goldeen', imageUrl: 'assets/img/118.png'),
    Evolution(name: 'Seaking', imageUrl: 'assets/img/119.png'),
  ];

  List<Evolution> staryuEvolutions = [
    Evolution(name: 'Staryu', imageUrl: 'assets/img/120.png'),
    Evolution(name: 'Starmie', imageUrl: 'assets/img/121.png'),
  ];

  List<Evolution> margikapEvolutions = [
    Evolution(name: 'Margikap', imageUrl: 'assets/img/129.png'),
    Evolution(name: 'Gyarados', imageUrl: 'assets/img/130.png'),
  ];

  List<Evolution> eeveeEvolutions = [
    Evolution(name: 'Eevee', imageUrl: 'assets/img/133.png'),
    Evolution(name: 'Vaporeon', imageUrl: 'assets/img/134.png'),
    Evolution(name: 'Jolteon', imageUrl: 'assets/img/135.png'),
    Evolution(name: 'Flareon', imageUrl: 'assets/img/136.png'),
  ];

  List<Evolution> lictungEvolutions = [];

  List<Evolution> omanyteEvolutions = [
    Evolution(name: 'Omanyte', imageUrl: 'assets/img/138.png'),
    Evolution(name: 'Omastar', imageUrl: 'assets/img/0139.png'),
  ];

  List<Evolution> kabutoEvolutions = [
    Evolution(name: 'Kabuto', imageUrl: 'assets/img/140.png'),
    Evolution(name: 'Kabutops', imageUrl: 'assets/img/141.png'),
  ];
  List<Evolution> datriniEvolutions = [
    Evolution(name: 'Dratini', imageUrl: 'assets/img/147.png'),
    Evolution(name: 'Dragonair', imageUrl: 'assets/img/148.png'),
    Evolution(name: 'Dragonite', imageUrl: 'assets/img/149.png'),
  ];
  List<Evolution> none = [];
}
