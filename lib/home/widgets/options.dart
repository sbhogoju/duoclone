import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('Feed'),
          selectedColor: const Color.fromRGBO(153, 153, 153, 0.4),
          hoverColor: const Color.fromRGBO(153, 153, 153, 0.4),
          leading: MySpriteButton(
            spriteDetails: MySprites.feed,
          ),
        ),
        const Divider(),
        ListTile(
          onTap: () {},
          focusColor: const Color.fromRGBO(153, 153, 153, 0.4),
          selectedColor: const Color.fromRGBO(153, 153, 153, 0.4),
          hoverColor: const Color.fromRGBO(153, 153, 153, 0.4),
          title: const Text('Profile'),
          leading: MySpriteButton(
            spriteDetails: MySprites.profile,
          ),
        ),
      ],
    );
  }
}
