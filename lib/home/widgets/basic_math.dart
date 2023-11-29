import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/home/widgets/sprite_level_button.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class BeginnerMath extends StatelessWidget {
  const BeginnerMath({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            MySpriteButton(spriteDetails: MySprites.parrotMap),
            const SizedBox(height: 40),
            Card(
              margin: const EdgeInsets.all(16),
              elevation: 0,
              color: const Color.fromARGB(124, 45, 122, 92),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    'Beginner Math',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      const Flexible(
                        child: LinearProgressIndicator(
                            value: 0.1,
                            minHeight: 20,
                            backgroundColor: Color.fromRGBO(51, 117, 92, 0.5),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color.fromRGBO(95, 207, 162, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        '1/10',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white70),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Learn foundational math skills for kids and elders',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: MySpriteLevelButton(
                      spriteDetails: MySprites.greenStart,
                      pressedSpriteDetails: MySprites.greenStartPressed,
                      marginLeft: 0,
                      hasProgress: true,
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     fullscreenDialog: true,
                        //     builder: (context) {
                        //       return const MathDetails();
                        //     }));
                      },
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
