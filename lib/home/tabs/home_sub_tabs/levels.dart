import 'package:duoclone/home/widgets/sprite_level_button.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class LevelSelection extends StatelessWidget {
  const LevelSelection({super.key});

  double getMarginLeft(int index) {
    List<double> margins = [
      0,
      60.0,
      120.0,
      // 180.0,
      // 120.0,
      60.0,
      0,
      -60.0,
      -120.0,
      // -180.0,
      // -120.0,
      -60.0
    ];
    if (index < margins.length) {
      return margins[index];
    } else {
      return margins[index % margins.length];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(0),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(1),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.special1,
                  pressedSpriteDetails: MySprites.special1,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(2),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.special2,
                  pressedSpriteDetails: MySprites.special2,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(3),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(4),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(5),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(6),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.special2,
                  pressedSpriteDetails: MySprites.special2,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(7),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(8),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(9),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.special1,
                  pressedSpriteDetails: MySprites.special1,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(10),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.special2,
                  pressedSpriteDetails: MySprites.special2,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(11),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(12),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(13),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.levelStar,
                  pressedSpriteDetails: MySprites.levelStarPressed,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(14),
                ),
                const SizedBox(
                  height: 16,
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.special2,
                  pressedSpriteDetails: MySprites.special2,
                  popoverWidget: const SamplePopover(),
                  marginLeft: getMarginLeft(15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
