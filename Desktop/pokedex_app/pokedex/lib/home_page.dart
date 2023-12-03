import 'dart:js_interop_unsafe';
import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:pokedex/pokemons.dart';
import 'package:pokedex/rotas.dart';
import 'package:pokedex/tipos.dart';
import 'favoritos_page.dart';
import 'equipe.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final pokemons = PokemonRepository();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(110, 7, 12, 1),
        title: Image.asset('assets/img/pokebola.png', height: 50),
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
                'Olá, eu sou o Rotom!',
                style: TextStyle(fontFamily: 'Bebas Neue'),
              ),
              accountEmail: Text(''),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img/rottom.gif'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favoritos"),
              onTap: () {
                print("Favoritos");

                Navigator.pop(context);
                Navigator.pushNamed(context, "/favoritos");
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
        itemCount: widget.pokemons.list.length,
        itemBuilder: (BuildContext context, int index) {
          List<String> types = widget.pokemons.list[index].types;
          Color bgColor = getTypeColor(types[0]);

          return ListTile(
            hoverColor: Color.fromRGBO(214, 247, 244, 1),
            tileColor: Color.fromRGBO(173, 219, 242, 1),
            leading: Container(
              width: 50,
              height: 50,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  widget.pokemons.list[index].imageUrl,
                ),
                backgroundColor: Color.fromRGBO(214, 247, 244, 1),
              ),
            ),
            title: Text(
              '${widget.pokemons.list[index].numero.toString().padLeft(3, '0')} - ${widget.pokemons.list[index].name}',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: widget.pokemons.list[index].isFavorite
                      ? Icon(Icons.favorite, color: Colors.red)
                      : Icon(Icons.favorite_border),
                  onPressed: () {
                    setState(() {
                      widget.pokemons.list[index].isFavorite =
                          !widget.pokemons.list[index].isFavorite;
                      if (widget.pokemons.list[index].isFavorite) {
                        favoritesRepo.addFavorite(widget.pokemons.list[index]);
                        Icon(Icons.favorite, color: Colors.red);
                      } else {
                        favoritesRepo
                            .removeFavorite(widget.pokemons.list[index]);
                      }
                    });
                  },
                ),
                IconButton(
                  icon: widget.pokemons.list[index].isInTeam
                      ? Icon(Icons.group, color: Colors.green)
                      : Icon(Icons.group_outlined),
                  onPressed: () {
                    setState(() {
                      widget.pokemons.list[index].isInTeam =
                          !widget.pokemons.list[index].isInTeam;
                      if (widget.pokemons.list[index].isInTeam) {
                        equipeRepo.addEquipe(widget.pokemons.list[index]);
                        Icon(Icons.group, color: Colors.green);
                      } else {
                        equipeRepo.removeEquipe(widget.pokemons.list[index]);
                      }
                    });
                  },
                ),
              ],
            ),
            subtitle: Wrap(
              children: [
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
                            color: Colors.white, fontFamily: 'Bebas Neue'),
                      ),
                    ),
                  ),
              ],
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      backgroundColor: Color.fromRGBO(214, 247, 244, 1),
                      title: Text(
                        '${widget.pokemons.list[index].numero} - ${widget.pokemons.list[index].name}',
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
                                                      widget.pokemons
                                                          .list[index].imageUrl,
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
                                                                    .pokemons
                                                                    .list[index]
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
                                if (widget.pokemons.list[index].evolutions !=
                                    null)
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(214, 247, 244, 1),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: widget
                                            .pokemons.list[index].evolutions!
                                            .map((evolution) {
                                          int evolutionIndex = widget
                                              .pokemons.list[index].evolutions!
                                              .indexOf(evolution);
                                          return Row(
                                            children: [
                                              Image.asset(evolution.imageUrl,
                                                  width: 50, height: 50),
                                              if (evolutionIndex !=
                                                  widget.pokemons.list[index]
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
                                          child: widget.pokemons.list[index]
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
          );
        },
      ),
    );
  }
}
