import 'package:bonfire/bonfire.dart';
import 'package:casualgame/shared/util/common_sprite_sheet.dart';

///
/// Created by
///
/// ─▄▀─▄▀
/// ──▀──▀
/// █▀▀▀▀▀█▄
/// █░░░░░█─█
/// ▀▄▄▄▄▄▀▀
///
/// Rafaelbarbosatec
/// on 28/01/22
class ZombieEnemy extends RotationEnemy with ObjectCollision {
  ZombieEnemy(Vector2 position)
      : super(
          position: position,
          size: Vector2(68, 43),
          animIdle: _getAnimation(),
          animRun: _getAnimation(),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.circle(
            radius: 21.5,
            align: Vector2(
              12.5,
              0,
            ),
          ),
        ],
      ),
    );
  }

  static Future<SpriteAnimation> _getAnimation() {
    return Sprite.load('zombie.png').toAnimation();
  }

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {},
      radiusVision: 150,
    );
    super.update(dt);
  }

  @override
  void die() {
    gameRef.add(
      AnimatedObjectOnce(
        animation: CommonSpriteSheet.explosionAnimation,
        position: position,
        size: Vector2.all(64),
      ),
    );
    removeFromParent();

    super.die();
  }
}
