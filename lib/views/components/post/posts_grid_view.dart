import 'package:flutter/material.dart';
import 'package:instagram_clone/views/components/post/post_thumbnail_view.dart';

import '../../../state/posts/models/post.dart';

class PostsGridView extends StatelessWidget {
  const PostsGridView({
    Key? key,
    required this.posts,
  }) : super(key: key);
  final Iterable<Post> posts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        final post = posts.elementAt(index);
        return PostThumbnailView(
          post: post,
          onTap: () {},
        );
      },
      itemCount: posts.length,
    );
  }
}
