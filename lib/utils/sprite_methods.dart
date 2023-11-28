import 'package:duoclone/utils/sprites.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

Future<Sprite> duoSprite(SpriteDetails spriteDetails) async {
  // Move this method to a class and load the images at the beginning and then load images from cache here.

  // How about joining all images into one images using collage or something and create a sprite sheet.
  var image = await Flame.images.load(spriteDetails.source);
  return Sprite(
    image,
    srcPosition: Vector2(spriteDetails.x, spriteDetails.y),
    srcSize: Vector2(spriteDetails.width, spriteDetails.height),
  );
}

Future<SpriteStates> getSprites(
    SpriteDetails spriteDetails, SpriteDetails pressedSpriteDetails) async {
  var sprite = await duoSprite(spriteDetails);
  var pressedSprite = await duoSprite(pressedSpriteDetails);
  return SpriteStates(sprite: sprite, pressedSprite: pressedSprite);
}
