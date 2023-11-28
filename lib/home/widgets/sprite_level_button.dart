import 'package:duoclone/utils/sprite_methods.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flame/components.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class MySpriteLevelButton extends StatelessWidget {
  const MySpriteLevelButton(
      {super.key,
      required this.spriteDetails,
      required this.pressedSpriteDetails,
      required this.popoverWidget,
      required this.marginLeft,
      this.onPressed,
      this.selected});
  final SpriteDetails spriteDetails;
  final SpriteDetails pressedSpriteDetails;
  final double marginLeft;
  final Function? onPressed;
  final bool? selected;
  final Widget popoverWidget;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getSprites(spriteDetails, pressedSpriteDetails),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: selected == true
                      ? const EdgeInsets.all(4)
                      : EdgeInsets.zero,
                  decoration: selected == true
                      ? BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(
                                132,
                                215,
                                255,
                                1,
                              ),
                              width: 3),
                          borderRadius: BorderRadius.circular(8))
                      : null,
                  child: Container(
                    margin: marginLeft >= 0
                        ? EdgeInsets.only(left: marginLeft)
                        : EdgeInsets.only(right: -marginLeft),
                    child: SpriteButton(
                      onPressed: () {
                        // if (onPressed != null) {
                        //   onPressed!();
                        // }
                        showPopover(
                            context: context,
                            backgroundColor: Colors.grey,
                            bodyBuilder: (context) => const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: SamplePopover(),
                                ),
                            onPop: () => print('Popover was popped!'),
                            direction: PopoverDirection.bottom,
                            width: 300,
                            arrowHeight: 15,
                            arrowWidth: 30,
                            arrowDxOffset: marginLeft / 2);
                      },
                      width: spriteDetails.customWidth ?? 100,
                      height: spriteDetails.customHeight ?? 100,
                      label: const SizedBox(),
                      sprite: snapshot.data!.sprite,
                      pressedSprite: snapshot.data!.pressedSprite,
                      pressedSrcSize: Vector2(
                          pressedSpriteDetails.customWidth ?? 100,
                          pressedSpriteDetails.customHeight ?? 100),
                    ),
                  ),
                ),
                if (spriteDetails.label.isNotEmpty)
                  Text(
                    spriteDetails.label,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                else
                  const SizedBox()
              ],
            );
          } else {
            return const SizedBox();
          }
        });
  }
}

class SamplePopover extends StatelessWidget {
  const SamplePopover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Food',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Complete all levels above to unlock this!',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: null, child: Text('LOCKED')),
          )
        ],
      ),
    );
  }
}
