import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/home/widgets/sprite_level_button.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class LevelSelection extends StatefulWidget {
  const LevelSelection({super.key});

  @override
  State<LevelSelection> createState() => _LevelSelectionState();
}

class _LevelSelectionState extends State<LevelSelection> {
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

  Color progressColor = Colors.red;
  double progressValue = 0.0;

  void updateProgress() {
    if (progressValue < 1) {
      progressValue += 0.1;
      progressValue = double.parse(progressValue.toStringAsFixed(1));
      setState(() {
        if (progressValue < 0.4) {
          progressColor = Colors.red;
        } else if (progressValue < 0.6) {
          progressColor = Colors.yellow;
        } else {
          progressColor = Colors.green;
        }
      });
    } else {
      setState(() {
        progressValue = 0.0;
        progressColor = Colors.red;
      });
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
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: RotationTransition(
                                turns: const AlwaysStoppedAnimation(140 / 360),
                                child: CircularProgressIndicator(
                                  backgroundColor:
                                      const Color.fromRGBO(229, 229, 229, 1),
                                  value: progressValue,
                                  strokeWidth: 6,
                                  color: progressColor,
                                  strokeCap: StrokeCap.round,
                                ),
                              ),
                            ),
                            if (progressValue >= 0.4)
                              Align(
                                alignment: Alignment.bottomRight,
                                child: MySpriteButton(
                                    spriteDetails: MySprites.crown),
                              )
                          ],
                        ),
                      ),
                    ),
                    MySpriteLevelButton(
                      spriteDetails: MySprites.levelStar,
                      pressedSpriteDetails: MySprites.levelStarPressed,
                      popoverWidget: const SamplePopover(),
                      marginLeft: getMarginLeft(0),
                      onPressed: () {
                        updateProgress();
                      },
                      hasProgress: true,
                    ),
                  ],
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
