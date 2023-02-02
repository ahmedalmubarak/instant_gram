import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/state/auth/providers/auth_state_provider.dart';

final isLoadingProvider = Provider(
  (ref) {
    final authState = ref.watch(authStateNotifier);
    return authState.isLoading;
  },
);
