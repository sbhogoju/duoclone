import 'package:duoclone/home/widgets/hearts.dart';
import 'package:duoclone/home/widgets/options.dart';
import 'package:duoclone/utils/sprite_methods.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class MySpriteButton extends StatelessWidget {
  const MySpriteButton(
      {super.key,
      required this.spriteDetails,
      this.onPressed,
      this.selected,
      this.options = false,
      this.hearts = false});
  final SpriteDetails spriteDetails;
  final Function? onPressed;
  final bool? selected;
  final bool? options;
  final bool? hearts;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: duoSprite(spriteDetails),
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
                  child: SpriteButton(
                    onPressed: () {
                      if (hearts == true) {
                        showPopover(
                          context: context,
                          backgroundColor: Colors.white,
                          barrierColor:
                              const Color.fromRGBO(153, 153, 153, 0.4),
                          bodyBuilder: (context) => const Hearts(),
                          onPop: () => print('Popover was popped!'),
                          width: MediaQuery.of(context).size.width,
                          direction: PopoverDirection.bottom,
                          arrowDyOffset: 15.0,
                          arrowHeight: 5,
                          arrowWidth: 10,
                        );
                      }
                      if (options == true) {
                        showPopover(
                          context: context,
                          backgroundColor: Colors.white,
                          barrierColor:
                              const Color.fromRGBO(153, 153, 153, 0.4),
                          bodyBuilder: (context) => const Options(),
                          onPop: () => print('Popover was popped!'),
                          width: MediaQuery.of(context).size.width,
                          direction: PopoverDirection.top,
                          arrowDyOffset: -20.0,
                          arrowHeight: 0,
                          arrowWidth: 30,
                        );
                      }
                      if (onPressed != null) {
                        onPressed!();
                      }
                    },
                    width: spriteDetails.customWidth ?? 100,
                    height: spriteDetails.customHeight ?? 100,
                    label: const SizedBox(),
                    sprite: snapshot.data!,
                    pressedSprite: snapshot.data!,
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
