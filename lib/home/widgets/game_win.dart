import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/home/widgets/sprite_level_button.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

class GameWin extends StatefulWidget {
  const GameWin({super.key, required this.close});
  final Function close;
  @override
  State<GameWin> createState() => _GameWinState();
}

class _GameWinState extends State<GameWin> with TickerProviderStateMixin {
  late final AnimationController _controller1 = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation1 = Tween<Offset>(
    end: Offset.zero,
    begin: const Offset(-2.0, 0.4),
  ).animate(CurvedAnimation(
    parent: _controller1,
    curve: Curves.bounceOut,
  ));

  late final AnimationController _controller2 = AnimationController(
    duration: const Duration(milliseconds: 750),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation2 = Tween<Offset>(
    end: Offset.zero,
    begin: const Offset(-2.0, 0.5),
  ).animate(CurvedAnimation(
    parent: _controller2,
    curve: Curves.bounceOut,
  ));

  late final AnimationController _controller3 = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation3 = Tween<Offset>(
    end: Offset.zero,
    begin: const Offset(-2.0, 0.4),
  ).animate(CurvedAnimation(
    parent: _controller3,
    curve: Curves.bounceOut,
  ));

  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await _controller1.forward();
    await _controller2.forward();
    await _controller3.forward();
  }

  void disposed() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
  }

  @override
  void dispose() {
    disposed();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: const Color.fromARGB(255, 245, 238, 37),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 245, 238, 37),
                blurRadius: 25.0,
              ),
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MySpriteButton(spriteDetails: MySprites.parrotSprite),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                  position: _offsetAnimation1,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.star_rounded,
                      size: 60,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: SlideTransition(
                    position: _offsetAnimation2,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.star_rounded,
                        size: 60,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                SlideTransition(
                  position: _offsetAnimation3,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.star_half_rounded,
                      size: 60,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MySpriteLevelButton(
                  spriteDetails: MySprites.button1,
                  pressedSpriteDetails: MySprites.button1Pressed,
                  marginLeft: 0,
                  hasProgress: true,
                  onPressed: () {
                    widget.close();
                  },
                ),
                MySpriteLevelButton(
                  spriteDetails: MySprites.button2,
                  pressedSpriteDetails: MySprites.button2Pressed,
                  marginLeft: 0,
                  hasProgress: true,
                  onPressed: () {
                    widget.close();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
