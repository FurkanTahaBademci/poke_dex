import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/consts/const.dart';
import 'package:poke_dex/consts/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';
import 'package:poke_dex/widgets/pokeImage.dart';

import '../pages/detail_page.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(pokemon: pokemon),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIhelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIhelper.getDefaultPadding(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pokemon.name.toString() ?? 'N/A',
                  style: Constants.getPokemonmodelTextStyle(),
                ),
                Chip(
                  label: Text(
                    pokemon.type![0],
                    style: Constants.getTypeChipTextStyle(),
                  ),
                ),
                Expanded(
                    child: PokeImageAndBall(
                  pokemon: pokemon,
                ))
              ]),
        ),
      ),
    );
  }
}
