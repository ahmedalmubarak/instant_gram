import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/state/comments/extension/comment_sorting_by_request.dart';
import 'package:instagram_clone/state/comments/models/comment.dart';
import 'package:instagram_clone/state/comments/models/post_comments_request.dart';
import 'package:instagram_clone/state/constants/firebase_collection_name.dart';
import 'package:instagram_clone/state/constants/firebase_field_name.dart';

final postCommentProvider = StreamProvider.family
    .autoDispose<Iterable<Comment>, RequestForPostsAndComments>(
  (ref, request) {
    final controller = StreamController<Iterable<Comment>>();
    final sub = FirebaseFirestore.instance
        .collection(FirebaseCollectionName.comments)
        .where(FirebaseFieldName.postId, isEqualTo: request.postId)
        .snapshots()
        .listen(
      (snapshot) {
        final document = snapshot.docs;
        final limitedDocuments =
            request.limit != null ? document.take(request.limit!) : document;
        final comments = limitedDocuments
            .where(
              (doc) => !doc.metadata.hasPendingWrites,
            )
            .map(
              (document) => Comment.fromJson(
                document.data(),
                id: request.postId,
              ),
            );
        final result = comments.applySortingFrom(request);
        controller.sink.add(result);
      },
    );
    ref.onDispose(() {
      sub.cancel();
      controller.close();
    });
    return controller.stream;
  },
);
