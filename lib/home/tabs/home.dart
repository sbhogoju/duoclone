import 'package:duoclone/home/widgets/sprite_button_label.dart';
import 'package:duoclone/utils/audio_provider.dart';
import 'package:duoclone/utils/routes.dart';
import 'package:duoclone/utils/sounds.dart';
import 'package:duoclone/utils/sprites.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with WidgetsBindingObserver {
  bool loading = false;
  late AudioPlayerManager audioPlayerManager;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    audioPlayerManager =
        Provider.of<AudioPlayerManager>(context, listen: false);
    audioPlayerManager.startMusic(MySounds.background);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.hidden) {
      // App is minimized
      audioPlayerManager.pauseOnAppMinimized();
    } else if (state == AppLifecycleState.resumed) {
      // App is resumed (brought to foreground)
      audioPlayerManager.resumeOnAppForeground();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Stack(
        alignment: Alignment.center,
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: MySpriteButton(spriteDetails: MySprites.xp10),
              )),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 32,
                ),
                MySpriteButton(spriteDetails: MySprites.unit1),
                const SizedBox(
                  height: 32,
                ),
                MySpriteButton(
                  spriteDetails: MySprites.basics,
                  onPressed: () {
                    AppRouter.router.goNamed(AppRouter.levels);
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MySpriteButton(
                      spriteDetails: MySprites.phrases,
                      onPressed: () {
                        AppRouter.router.goNamed(AppRouter.drag);
                      },
                    ),
                    MySpriteButton(spriteDetails: MySprites.animals),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MySpriteButton(spriteDetails: MySprites.food),
                    MySpriteButton(spriteDetails: MySprites.family),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MySpriteButton(spriteDetails: MySprites.transport),
                    MySpriteButton(spriteDetails: MySprites.travel),
                    MySpriteButton(spriteDetails: MySprites.places),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
