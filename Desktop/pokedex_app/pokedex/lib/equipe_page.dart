import 'package:flutter/material.dart';
import 'package:pokedex/rotas.dart';
import 'pokemons.dart';
import 'favoritos.dart';
import 'tipos.dart';
import 'home_page.dart';
import 'equipe.dart';

class EquipePage extends StatefulWidget {
  final Equipe equipeRepo;

  EquipePage({required this.equipeRepo});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<EquipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Equipe',
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'Bebas Neue')),
            Image.asset('assets/img/pokebola.png', height: 50),
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
              leading: const Icon(Icons.favorite),
              title: const Text("Favortos"),
              onTap: () {
                print("Favoritos");

                Navigator.pop(context);
                Navigator.pushNamed(context, "/favoritos");
              },
            ),
          ],
        ),
      )),
      body: GridView.builder(
        itemCount: widget.equipeRepo.equipe.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          Pokemon pokemon = widget.equipeRepo.equipe[index];
          List<String> types = pokemon.types;
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      backgroundColor: Color.fromRGBO(214, 247, 244, 1),
                      title: Text(
                        '${widget.equipeRepo.equipe[index].numero} - ${widget.equipeRepo.equipe[index].name}',
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
                                                      widget
                                                          .equipeRepo
                                                          .equipe[index]
                                                          .imageUrl,
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
                                                                widget
                                                                    .equipeRepo
                                                                    .equipe[
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
                                      children: widget
                                          .equipeRepo.equipe[index].evolutions!
                                          .map((evolution) {
                                        int evolutionIndex = widget.equipeRepo
                                            .equipe[index].evolutions!
                                            .indexOf(evolution);
                                        return Row(
                                          children: [
                                            Image.asset(evolution.imageUrl,
                                                width: 50, height: 50),
                                            if (evolutionIndex !=
                                                widget.equipeRepo.equipe[index]
                                                        .evolutions!.length -
                                                    1)
                                              const Icon(Icons.arrow_forward),
                                          ],
                                        );
                                      }).toList(),
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
                                          child: widget.equipeRepo.equipe[index]
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
              color: Color.fromRGBO(173, 219, 242, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: const Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        equipeRepo.removeEquipe(pokemon);
                      });
                    },
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(pokemon.imageUrl),
                    radius: 50,
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
