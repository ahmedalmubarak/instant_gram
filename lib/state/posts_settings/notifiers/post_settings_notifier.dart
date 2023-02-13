import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/state/posts_settings/models/post_setting.dart';

class PostSettingsNotifier extends StateNotifier<Map<PostSetting, bool>> {
  PostSettingsNotifier()
      : super(
          UnmodifiableMapView(
            {
              for (final setting in PostSetting.values) setting: true,
            },
          ),
        );

  void setSetting(PostSetting settings, bool value) {
    final existingValue = state[settings];
    if (existingValue == null || existingValue == value) {
      return;
    }
    state = Map.unmodifiable(
      Map.from(state)..[settings] = value,
    );
  }
}
