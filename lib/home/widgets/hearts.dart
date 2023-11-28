import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class Hearts extends StatelessWidget {
  const Hearts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MySpriteButton(spriteDetails: MySprites.heart),
            MySpriteButton(spriteDetails: MySprites.heart),
            MySpriteButton(spriteDetails: MySprites.heart),
            MySpriteButton(spriteDetails: MySprites.heart),
            MySpriteButton(spriteDetails: MySprites.heart),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'You have full hearts',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Keep on learning',
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        ElevatedButton.icon(
          onPressed: null,
          icon: MySpriteButton(spriteDetails: MySprites.heart),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ))),
          label: Text(
            'REFILL HEARTS',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: MySpriteButton(spriteDetails: MySprites.heart),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color?>(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ))),
          label: Text(
            'UNLIMITED HEARTS',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        ElevatedButton.icon(
          onPressed: null,
          icon: MySpriteButton(spriteDetails: MySprites.heart),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ))),
          label: Text(
            'PRACTICE TO EARN HEARTS',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
