import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/state/posts_settings/models/post_setting.dart';
import 'package:instagram_clone/state/posts_settings/notifiers/post_settings_notifier.dart';

final postSettingProvider =
    StateNotifierProvider<PostSettingsNotifier, Map<PostSetting, bool>>(
  (ref) => PostSettingsNotifier(),
);
