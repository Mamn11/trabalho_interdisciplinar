import 'package:flutter/material.dart';
import 'package:pokedex/rotas.dart';
import 'pokemons.dart';
import 'favoritos.dart';
import 'tipos.dart';
import 'home_page.dart';

class FavoritosPage extends StatefulWidget {
  final FavoritesRepository favoritesRepo;

  FavoritosPage({required this.favoritesRepo});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Favoritos',
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'Bebas Neue')),
            Image.asset('assets/img/pokebola.png', height: 50),
            // Add your subtitle here
          ],
        ),
        backgroundColor: Color.fromRGBO(110, 7, 12, 1),
      ),
      drawer: SafeArea(
          child: Drawer(
        surfaceTintColor: Colors.white,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(212, 76, 91, 1),
              ),
              accountName: Text(
                'Olá, eu sou o Rottom!',
                style: TextStyle(fontFamily: 'Bebas Neue'),
              ),
              accountEmail: Text(''),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img/rottom.gif'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                print("Favoritos");

                Navigator.pop(context);
                Navigator.pushNamed(context, "/");
              },
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text("Equipe"),
              onTap: () {
                print("Favoritos");

                Navigator.pop(context);
                Navigator.pushNamed(context, "/equipe");
              },
            ),
          ],
        ),
      )),
      body: ListView.builder(
        itemCount: widget.favoritesRepo.favorites.length,
        itemBuilder: (context, index) {
          Pokemon pokemon = widget.favoritesRepo.favorites[index];
          List<String> types = pokemon.types;

          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      backgroundColor: Color.fromRGBO(214, 247, 244, 1),
                      title: Text(
                        '${favoritesRepo.favorites[index].numero} - ${favoritesRepo.favorites[index].name}',
                        style: TextStyle(fontFamily: 'Bebas Neue'),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              width: 500,
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 50, 0),
                                                    decoration: BoxDecoration(
                                                      color: Color.fromRGBO(
                                                          214, 247, 244, 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Image.asset(
                                                      favoritesRepo
                                                          .favorites[index]
                                                          .imageUrl, //pokemon atual
                                                      width: 139,
                                                      height: 139,
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 0, 0, 10),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                child: Icon(
                                                                    Icons
                                                                        .info_outlined,
                                                                    size: 20),
                                                              ),
                                                              Text(
                                                                'INFORMÇÕES',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Bebas Neue'),
                                                              ),
                                                            ],
                                                          )),
                                                      Container(
                                                        height: 100,
                                                        width: 300,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Color.fromRGBO(
                                                              214, 247, 244, 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 2, 0, 0),
                                                          child: Expanded(
                                                            flex: 1,
                                                            child:
                                                                SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              child: Text(
                                                                favoritesRepo
                                                                    .favorites[
                                                                        index]
                                                                    .descricao,
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 15,
                                                                  fontFamily:
                                                                      'Bebas Neue',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Wrap(
                                          children: [
                                            for (var i = 0;
                                                i < types.length;
                                                i++)
                                              Container(
                                                padding: EdgeInsets.all(2),
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                height: 25,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                  color: getTypeColor(types[i]),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    types[i],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily:
                                                            'Bebas Neue'),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(214, 247, 244, 1),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: favoritesRepo
                                          .favorites[index].evolutions!
                                          .map((evolution) {
                                        int evolutionIndex = favoritesRepo
                                            .favorites[index].evolutions!
                                            .indexOf(evolution);
                                        return Row(
                                          children: [
                                            Image.asset(evolution.imageUrl,
                                                width: 50, height: 50),
                                            if (evolutionIndex !=
                                                favoritesRepo.favorites[index]
                                                        .evolutions!.length -
                                                    1) // Don't add an arrow after the last evolution
                                              const Icon(Icons.arrow_forward),
                                          ],
                                        );
                                      }).toList(), // Convert the Iterable to a List
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(214, 247, 244, 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: MediaQuery.removePadding(
                                      context: context,
                                      removeTop: true,
                                      child: Container(
                                          child: favoritesRepo.favorites[index]
                                              .getStats())),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent.shade700,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      )),
                                ),
                              ])),
                        ],
                      ));
                },
              );
            },
            child: Card(
              margin: EdgeInsets.all(8),
              color: Color.fromRGBO(173, 219, 242, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: const Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        favoritesRepo.removeFavorite(pokemon);
                      });
                    },
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(pokemon.imageUrl),
                    radius: 50,
                    // adjust the size as needed
                  ),
                  Text(
                    pokemon.name,
                    style: TextStyle(fontFamily: 'Bebas Neue'),
                  ),
                  for (var i = 0; i < types.length; i++)
                    Container(
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.only(right: 5),
                      height: 25,
                      width: 55,
                      decoration: BoxDecoration(
                        color: getTypeColor(types[i]),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          types[i],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
