import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/state/auth/providers/auth_state_provider.dart';
import 'package:instagram_clone/state/image_upload/providers/image_uploader_provider.dart';

final isLoadingProvider = Provider(
  (ref) {
    final authState = ref.watch(authStateNotifier);
    final isUploadingImage = ref.watch(imageUploaderProvider);

    return authState.isLoading || isUploadingImage;
  },
);
