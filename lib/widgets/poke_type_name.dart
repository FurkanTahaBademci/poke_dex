import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/consts/const.dart';
import '../model/pokemon_model.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 0.05.sw,vertical: 0.02.sh),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name.toString() ?? 'N/A',
                  style: Constants.getPokemonmodelTextStyle(),
                ),
              ),
              Text(
                "#${pokemon.num}",
                style: Constants.getPokemonmodelTextStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
            label: Text(
              pokemon.type!.join(" , "),
              style: Constants.getTypeChipTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
