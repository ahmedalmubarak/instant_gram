import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/state/auth/providers/user_id_provider.dart';
import 'package:instagram_clone/state/comments/models/comment.dart';
import 'package:instagram_clone/views/components/animations/loading_animation_view.dart';
import 'package:instagram_clone/views/components/animations/small_error_animation_view.dart';
import 'package:instagram_clone/views/components/dialogs/alert_dialog_model.dart';
import 'package:instagram_clone/views/components/dialogs/delete_dialog.dart';

import '../../../state/user_info/providers/user_info_model_provider.dart';
import '../constants/strings.dart';

class CommentTile extends ConsumerWidget {
  final Comment comment;
  const CommentTile({
    required this.comment,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(
      userInfoModelProvider(comment.fromUserId),
    );
    return userInfo.when(
      data: (userInfo) {
        final currentUserId = ref.read(userIdProvider);
        return ListTile(
          trailing: currentUserId == comment.fromUserId
              ? IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () async {},
                )
              : null,
          title: Text(userInfo.displayName),
          subtitle: Text(comment.comment),
        );
      },
      loading: () {
        return const Center(
          child: LoadingAnimationView(),
        );
      },
      error: (error, stackTrace) {
        return const SmallErrorAnimationView();
      },
    );
  }

  Future<bool> displayDeleteDialog(BuildContext context) =>
      const DeleteDialog(titleOfObjectToDelete: Strings.comment)
          .present(context)
          .then(
            (value) => value || false,
          );
}
