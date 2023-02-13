import 'package:flutter/foundation.dart' show immutable;
import 'package:instagram_clone/enums/date_sorting.dart';
import 'package:instagram_clone/state/posts/typedefs/post_id.dart';

@immutable
class RequestForPostsAndComments {
  final PostId postId;
  final bool sortedByCreatedAt;
  final DateSorting dateSorting;
  final int? limit;

  const RequestForPostsAndComments({
    this.postId,
    this.sortedByCreatedAt,
    this.dateSorting,
    this.limit,
  });
}
