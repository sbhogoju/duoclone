import 'package:flame/widgets.dart';

class MySprites {
  static const String home = "home.png";
  static const String unit = "unit1.png";
  static const String appBar = "appbar.png";
  static const String levels = "levelsAndBottom.png";
  static const String optionsImage = "options.png";
  static const String cut = "cut.png";
  static const String parrot = "logo-with-duo.png";
  static SpriteDetails basics = SpriteDetails(
    source: home,
    x: 300,
    y: 54,
    height: 142,
    width: 142,
    label: 'Basics 1',
  );
  static SpriteDetails phrases = SpriteDetails(
    source: home,
    x: 219,
    y: 278,
    height: 142,
    width: 142,
    label: 'Phrases',
  );
  static SpriteDetails animals = SpriteDetails(
    source: home,
    x: 380,
    y: 278,
    height: 142,
    width: 142,
    label: 'Animals',
  );
  static SpriteDetails food = SpriteDetails(
    source: home,
    x: 219,
    y: 502,
    height: 142,
    width: 142,
    label: 'Food',
  );
  static SpriteDetails family = SpriteDetails(
    source: home,
    x: 385,
    y: 502,
    height: 142,
    width: 142,
    label: 'Family',
  );

  static SpriteDetails transport = SpriteDetails(
    source: home,
    x: 138,
    y: 726,
    height: 142,
    width: 142,
    label: 'Transport',
  );
  static SpriteDetails travel = SpriteDetails(
    source: home,
    x: 300,
    y: 726,
    height: 142,
    width: 142,
    label: 'Travel',
  );
  static SpriteDetails places = SpriteDetails(
    source: home,
    x: 461,
    y: 726,
    height: 142,
    width: 142,
    label: 'Places',
  );
  static SpriteDetails unit1 = SpriteDetails(
      source: unit,
      x: 50,
      y: 12,
      height: 223,
      width: 333,
      label: '',
      customHeight: 110,
      customWidth: 165);
  static SpriteDetails xp10 = SpriteDetails(
      source: unit,
      x: 434,
      y: 188,
      height: 136,
      width: 116,
      label: '',
      customHeight: 65,
      customWidth: 58);

  static SpriteDetails xp10Large = SpriteDetails(
      source: unit,
      x: 434,
      y: 188,
      height: 136,
      width: 116,
      label: '',
      customHeight: 130,
      customWidth: 116);

  // APPBAR
  static SpriteDetails flag = SpriteDetails(
      source: appBar,
      x: 4,
      y: 4,
      height: 28,
      width: 36,
      label: '',
      customHeight: 28,
      customWidth: 36);
  static SpriteDetails crown = SpriteDetails(
      source: appBar,
      x: 78,
      y: 5,
      height: 26,
      width: 32,
      label: '',
      customHeight: 26,
      customWidth: 32);
  static SpriteDetails blueStone = SpriteDetails(
      source: levels,
      x: 640,
      y: 40,
      height: 71,
      width: 58,
      label: '',
      customHeight: 28,
      customWidth: 24);
  static SpriteDetails heart = SpriteDetails(
      source: appBar,
      x: 288,
      y: 6,
      height: 24,
      width: 28,
      label: '',
      customHeight: 24,
      customWidth: 28);

// LEVELS
  static SpriteDetails levelStar = SpriteDetails(
      source: levels,
      x: 339,
      y: 861,
      height: 197,
      width: 211,
      label: '',
      customHeight: 80,
      customWidth: 80);

  static SpriteDetails levelStarPressed = SpriteDetails(
      source: levels,
      x: 478,
      y: 1680,
      height: 172,
      width: 211,
      label: '',
      customHeight: 80,
      customWidth: 80);

  static SpriteDetails special1 = SpriteDetails(
      source: levels,
      x: 227,
      y: 1116,
      height: 249,
      width: 297,
      label: '',
      customHeight: 100,
      customWidth: 100);
  static SpriteDetails special2 = SpriteDetails(
      source: levels,
      x: 334,
      y: 1434,
      height: 179,
      width: 217,
      label: '',
      customHeight: 100,
      customWidth: 100);

  // BOTTOM BAR
  static SpriteDetails homeTab = SpriteDetails(
      source: levels,
      x: 48,
      y: 2174,
      height: 86,
      width: 98,
      label: '',
      customHeight: 30,
      customWidth: 30);
  static SpriteDetails language = SpriteDetails(
      source: levels,
      x: 251,
      y: 2173,
      height: 92,
      width: 84,
      label: '',
      customHeight: 30,
      customWidth: 30);
  static SpriteDetails chest = SpriteDetails(
      source: levels,
      x: 445,
      y: 2179,
      height: 80,
      width: 86,
      label: '',
      customHeight: 30,
      customWidth: 30);
  static SpriteDetails dubmbell = SpriteDetails(
      source: levels,
      x: 629,
      y: 2175,
      height: 88,
      width: 108,
      label: '',
      customHeight: 30,
      customWidth: 30);
  static SpriteDetails badge = SpriteDetails(
      source: levels,
      x: 840,
      y: 2180,
      height: 78,
      width: 76,
      label: '',
      customHeight: 30,
      customWidth: 30);
  static SpriteDetails options = SpriteDetails(
      source: levels,
      x: 1028,
      y: 2174,
      height: 90,
      width: 90,
      label: '',
      customHeight: 30,
      customWidth: 30);
  // OPTIONS
  static SpriteDetails feed = SpriteDetails(
      source: optionsImage,
      x: 66,
      y: 70,
      width: 86,
      height: 79,
      label: '',
      customHeight: 30,
      customWidth: 30);
  static SpriteDetails profile = SpriteDetails(
      source: optionsImage,
      x: 53,
      y: 291,
      height: 86,
      width: 99,
      label: '',
      customHeight: 30,
      customWidth: 30);
  static SpriteDetails start = SpriteDetails(
      source: levels,
      x: 469,
      y: 455,
      height: 155,
      width: 226,
      label: '',
      customHeight: 50,
      customWidth: 75);
  static SpriteDetails button1 = SpriteDetails(
      source: cut,
      x: 727,
      y: 79,
      height: 74,
      width: 122,
      label: '',
      customHeight: 50,
      customWidth: 100);
  static SpriteDetails button1Pressed = SpriteDetails(
      source: cut,
      x: 726,
      y: 77,
      height: 74,
      width: 122,
      label: '',
      customHeight: 50,
      customWidth: 100);
  static SpriteDetails button2 = SpriteDetails(
      source: cut,
      x: 852,
      y: 75,
      height: 69,
      width: 124,
      label: '',
      customHeight: 50,
      customWidth: 100);
  static SpriteDetails button2Pressed = SpriteDetails(
      source: cut,
      x: 851,
      y: 73,
      height: 69,
      width: 124,
      label: '',
      customHeight: 50,
      customWidth: 100);
  static SpriteDetails parrotSprite = SpriteDetails(
      source: parrot,
      x: 117,
      y: 64,
      height: 251,
      width: 279,
      label: '',
      customHeight: 150,
      customWidth: 150);
}

class SpriteDetails {
  SpriteDetails({
    required this.source,
    required this.label,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.customHeight,
    this.customWidth,
  });
  String source;
  String label;
  double x;
  double y;
  double width;
  double height;
  double? customHeight;
  double? customWidth;
}

class SpriteStates {
  SpriteStates({
    required this.sprite,
    required this.pressedSprite,
  });
  Sprite sprite;
  Sprite pressedSprite;
}
