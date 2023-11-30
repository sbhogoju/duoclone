import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/utils/audio_provider.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Options extends StatelessWidget {
  const Options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AudioPlayerManager>(
        builder: (context, audioPlayerManager, _) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text('Feed'),
            focusColor: const Color.fromRGBO(153, 153, 153, 0.4),
            leading: MySpriteButton(
              spriteDetails: MySprites.feed,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            focusColor: const Color.fromRGBO(153, 153, 153, 0.4),
            title: const Text('Profile'),
            leading: MySpriteButton(
              spriteDetails: MySprites.profile,
            ),
          ),
          const Divider(),
          SwitchListTile(
            value: audioPlayerManager.isMusicOn,
            onChanged: (value) {
              audioPlayerManager.toggleMusic();
            },
            hoverColor: const Color.fromRGBO(153, 153, 153, 0.4),
            title: Row(
              children: [
                MySpriteButton(
                  spriteDetails: MySprites.profile,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text('Sound'),
              ],
            ),
          ),
        ],
      );
    });
  }
}
