import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/utils/images.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class AppBarHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: MySpriteButton(spriteDetails: MySprites.flag),
      elevation: 5,
      actions: <Widget>[
        MySpriteButton(spriteDetails: MySprites.crown),
        const SizedBox(
          width: 8,
        ),
        Text(
          "67",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.amber, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 66,
        ),
        MySpriteButton(spriteDetails: MySprites.blueStone),
        const SizedBox(
          width: 8,
        ),
        Text(
          "50",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: const Color.fromRGBO(28, 176, 246, 1),
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 65,
        ),
        MySpriteButton(spriteDetails: MySprites.heart),
        const SizedBox(
          width: 8,
        ),
        Text(
          "5",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
