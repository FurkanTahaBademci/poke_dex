import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/consts/ui_helper.dart';
import 'package:poke_dex/widgets/poke_information.dart';
import 'package:poke_dex/widgets/poke_type_name.dart';

import '../model/pokemon_model.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIhelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIhelper.getIconPadding(),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 10.w,
              ),
            ),
            PokeNameType(
              pokemon: pokemon,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'images/pokeball.png',
                      height: 0.15.sh,
                      fit: BoxFit.fitHeight,
                    ),
                    right: 0,
                    top: 0,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    top: 0.11.sh,
                    child: PokeInformation(pokemon: pokemon),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CachedNetworkImage(
                      imageUrl: pokemon.img!,
                      height: 0.23.sh,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
