import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/math/math.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      actions: <Widget>[
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Row(
            children: [
              MySpriteButton(
                spriteDetails: MySprites.flag,
                onPressed: () {
                  // context.go(AppRouter.math);
                  Navigator.of(context).push(MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) {
                        return MathCourse();
                      }));
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              MySpriteButton(spriteDetails: MySprites.crown),
              const SizedBox(
                width: 8,
              ),
              Text(
                "67",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.amber, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
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
            ],
          ),
        ),
        Row(
          children: [
            MySpriteButton(
              spriteDetails: MySprites.heart,
              hearts: true,
            ),
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
          ],
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
