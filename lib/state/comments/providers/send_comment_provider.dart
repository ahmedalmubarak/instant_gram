import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/state/comments/notifers/send_comment_notiers.dart';
import 'package:instagram_clone/state/image_upload/typedefs/is_loading.dart';

final sendCommentProvider =
    StateNotifierProvider<SendCommentNotifier, IsLoading>((ref) {
  return SendCommentNotifier();
});
