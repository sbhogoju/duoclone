import 'package:duoclone/utils/images.dart';
import 'package:duoclone/utils/routes.dart';
import 'package:duoclone/utils/sounds.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 1), () {
        AppRouter.router.goNamed(AppRouter.dashboard);
      });
    });
    playLocalAsset();
    super.initState();
  }

  AudioPlayer audioPlayer = AudioPlayer();
  Future<void> playLocalAsset() async {
    var source = AssetSource(MySounds.parrotChirp);
    audioPlayer.play(source);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(88, 204, 2, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              MyImages.logo,
              height: 100,
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              'duolingo',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
