import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/home/widgets/sprite_level_button.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class LevelSelection extends StatefulWidget {
  const LevelSelection({super.key});

  @override
  State<LevelSelection> createState() => _LevelSelectionState();
}

class _LevelSelectionState extends State<LevelSelection>
    with SingleTickerProviderStateMixin {
  Color progressColor = Colors.red;
  double progressValue = 0.0;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, -0.1),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutBack,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void updateProgress() {
    if (progressValue < 1) {
      progressValue += 0.1;
      progressValue = double.parse(progressValue.toStringAsFixed(1));
      setState(() {
        if (progressValue < 0.4) {
          progressColor = Colors.red;
        } else if (progressValue < 0.7) {
          progressColor = Colors.orange;
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
                  height: 48,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 160,
                            width: 110,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: RotationTransition(
                                    turns:
                                        const AlwaysStoppedAnimation(140 / 360),
                                    child: CircularProgressIndicator(
                                      backgroundColor: const Color.fromRGBO(
                                          229, 229, 229, 1),
                                      value: progressValue,
                                      strokeWidth: 6,
                                      color: progressColor,
                                      strokeCap: StrokeCap.round,
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: progressValue >= 0.4,
                                  child: Positioned(
                                    bottom: 28,
                                    right: 4,
                                    child: MySpriteButton(
                                        spriteDetails: MySprites.crown),
                                  ),
                                ),
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
                    Visibility(
                      visible: progressValue == 0,
                      child: Positioned(
                        top: 0,
                        child: SlideTransition(
                          position: _offsetAnimation,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                MySpriteButton(spriteDetails: MySprites.start),
                          ),
                        ),
                      ),
                    )
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
