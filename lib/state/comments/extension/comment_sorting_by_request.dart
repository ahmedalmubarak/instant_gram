import 'package:instagram_clone/state/comments/models/comment.dart';

import '../../../enums/date_sorting.dart';
import '../models/post_comments_request.dart';

extension Sorting on Iterable<Comment> {
  Iterable<Comment> applySortingFrom(RequestForPostsAndComments request) {
    if (request.sortedByCreatedAt) {
      final sortedDocuments = toList()
        ..sort(
          (a, b) {
            switch (request.dateSorting) {
              case DateSorting.newestOnTop:
                return b.createdAt.compareTo(a.createdAt);
              case DateSorting.oldestOnTop:
                return a.createdAt.compareTo(b.createdAt);
            }
          },
        );
      return sortedDocuments;
    } else {
      return this;
    }
  }
}
