import 'package:bonfire/bonfire.dart';
import 'package:casualgame/manual_map/dungeon_map.dart';
import 'package:casualgame/shared/util/common_sprite_sheet.dart';

class PotionLife extends GameDecoration with Sensor {
  final double life;
  double _lifeDistributed = 0;

  PotionLife(Vector2 position, this.life)
      : super.withSprite(
          sprite: CommonSpriteSheet.potionLifeSprite,
          position: position,
          size: Vector2.all(DungeonMap.tileSize * 0.5),
        );

  @override
  // ignore: avoid_renaming_method_parameters
  void onContact(GameComponent collision) {
    if (collision is Player) {
      gameRef.getValueGenerator(const Duration(seconds: 1), onChange: (value) {
        if (_lifeDistributed < life) {
          double newLife = life * value - _lifeDistributed;
          _lifeDistributed += newLife;
          collision.addLife(newLife);
        }
      }).start();

      removeFromParent();
    }
  }
}
