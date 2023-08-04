import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/consts/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset("images/pokeball.png",
          height: UIhelper.calculatePokeImgAndPokebollSize(),
          width: UIhelper.calculatePokeImgAndPokebollSize(),
          fit: BoxFit.fitHeight,),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(imageUrl: pokemon.img ?? "",
          height: UIhelper.calculatePokeImgAndPokebollSize(),
          width: UIhelper.calculatePokeImgAndPokebollSize(),
          fit: BoxFit.fitHeight,
          placeholder: (context, url) => CircularProgressIndicator(
            color: UIhelper.getColorFromType(pokemon.type![0]) ,
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
          )
        ),
      ],
    );
  }
}
