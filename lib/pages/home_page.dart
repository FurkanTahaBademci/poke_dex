import 'package:flutter/material.dart';
import 'package:poke_dex/widgets/app_title.dart';
import 'package:poke_dex/widgets/pokemonListWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: const PokemonList()),
        ],
      ),
    );
  }
}
