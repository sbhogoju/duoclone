import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/utils/audio_provider.dart';
import 'package:duoclone/utils/sounds.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyDragPage extends StatefulWidget {
  const MyDragPage({super.key});

  @override
  State<MyDragPage> createState() => _MyDragPageState();
}

class _MyDragPageState extends State<MyDragPage> with TickerProviderStateMixin {
  late AudioPlayerManager audioPlayerManager;
  int points = 0;
  List<int> completed = [];
  List<SpriteDetails> bgListOriginal = [
    MySprites.oneBg,
    MySprites.twoBg,
    MySprites.threeBg,
    MySprites.fourBg,
    MySprites.sixBg
  ];
  List<SpriteDetails> bgList = [
    MySprites.oneBg,
    MySprites.twoBg,
    MySprites.threeBg,
    MySprites.fourBg,
    MySprites.sixBg
  ];
  void updateBgList(int index) {
    if (!completed.contains(index)) {
      SpriteDetails newSprite;
      switch (index) {
        case 0:
          newSprite = MySprites.one;
          break;
        case 1:
          newSprite = MySprites.two;
          break;
        case 2:
          newSprite = MySprites.three;
          break;
        case 3:
          newSprite = MySprites.four;
          break;
        case 4:
          newSprite = MySprites.six;
          break;
        default:
          newSprite = bgList[index];
      }

      setState(() {
        points += 1;
        bgList[index] = newSprite;
        completed = completed + [index];
      });
      if (points == 5) {
        audioPlayerManager.startMusic(MySounds.levelUp);
      }
    }
  }

  void resetGame() {
    setState(() {
      bgList = bgListOriginal;
      points = 0;
      completed = [];
    });
  }

  @override
  void initState() {
    audioPlayerManager =
        Provider.of<AudioPlayerManager>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    audioPlayerManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Drag the shapes into shadows',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.redAccent),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Row(
              children: [
                TweenAnimationBuilder<double>(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    tween: Tween<double>(
                      begin: 0,
                      end: points / 5,
                    ),
                    builder: (context, value, _) {
                      return Flexible(
                        child: LinearProgressIndicator(
                            value: value,
                            minHeight: 20,
                            backgroundColor:
                                const Color.fromARGB(136, 136, 136, 127),
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Color.fromRGBO(222, 78, 107, 1)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                      );
                    }),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '$points / 5',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(222, 78, 107, 1)),
                )
              ],
            ),
          ),
          Flexible(
            child: GridView(
              padding: const EdgeInsets.all(16),
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2),
              children: [
                LongPressDraggable(
                    data: 0,
                    dragAnchorStrategy: pointerDragAnchorStrategy,
                    feedback: MySpriteButton(spriteDetails: MySprites.one),
                    child: MySpriteButton(spriteDetails: MySprites.one)),
                DragTarget(builder: (context, candidateItems, rejectedItems) {
                  return MySpriteButton(spriteDetails: bgList[4]);
                }, onAccept: (item) {
                  if (item == 4) {
                    updateBgList(4);
                  }
                }),
                LongPressDraggable(
                    data: 1,
                    dragAnchorStrategy: pointerDragAnchorStrategy,
                    feedback: MySpriteButton(spriteDetails: MySprites.two),
                    child: MySpriteButton(spriteDetails: MySprites.two)),
                DragTarget(builder: (context, candidateItems, rejectedItems) {
                  return MySpriteButton(spriteDetails: bgList[3]);
                }, onAccept: (item) {
                  if (item == 3) {
                    updateBgList(3);
                  }
                }),
                LongPressDraggable(
                    data: 2,
                    dragAnchorStrategy: pointerDragAnchorStrategy,
                    feedback: MySpriteButton(spriteDetails: MySprites.three),
                    child: MySpriteButton(spriteDetails: MySprites.three)),
                DragTarget(builder: (context, candidateItems, rejectedItems) {
                  return MySpriteButton(spriteDetails: bgList[1]);
                }, onAccept: (item) {
                  if (item == 1) {
                    updateBgList(1);
                  }
                }),
                LongPressDraggable(
                    data: 3,
                    dragAnchorStrategy: pointerDragAnchorStrategy,
                    feedback: MySpriteButton(spriteDetails: MySprites.four),
                    child: MySpriteButton(spriteDetails: MySprites.four)),
                DragTarget(builder: (context, candidateItems, rejectedItems) {
                  return MySpriteButton(spriteDetails: bgList[2]);
                }, onAccept: (item) {
                  if (item == 2) {
                    updateBgList(2);
                  }
                }),
                LongPressDraggable(
                    data: 4,
                    dragAnchorStrategy: pointerDragAnchorStrategy,
                    feedback: MySpriteButton(spriteDetails: MySprites.six),
                    child: MySpriteButton(spriteDetails: MySprites.six)),
                DragTarget(builder: (context, candidateItems, rejectedItems) {
                  return MySpriteButton(spriteDetails: bgList[0]);
                }, onAccept: (item) {
                  if (item == 0) {
                    updateBgList(0);
                  }
                }),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                  icon: const Icon(Icons.arrow_back_rounded,
                      color: Colors.redAccent),
                  onPressed: () {
                    context.pop();
                  },
                  label: Text(
                    'GO BACK',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.redAccent),
                  )),
              TextButton.icon(
                  icon: const Icon(Icons.replay, color: Colors.redAccent),
                  onPressed: () {
                    resetGame();
                  },
                  label: Text(
                    'PLAY AGAIN',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.redAccent),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
