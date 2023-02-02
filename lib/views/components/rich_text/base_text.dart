import 'package:flutter/material.dart' show TextStyle, Colors, TextDecoration;
import 'package:flutter/foundation.dart' show VoidCallback, immutable;
import 'package:instagram_clone/views/components/rich_text/link_text.dart';

@immutable
class BaseText {
  final String text;
  final TextStyle? style;

  const BaseText({
    required this.text,
    this.style,
  });

  factory BaseText.plan({
    required String text,
    TextStyle? style,
  }) =>
      BaseText(
        text: text,
        style: style,
      );
  factory BaseText.link({
    required String text,
    required VoidCallback onTapped,
    TextStyle? style = const TextStyle(
      color: Colors.blue,
      decoration: TextDecoration.underline,
    ),
  }) =>
      LinkText(
        text: text,
        style: style,
        onTapped: onTapped,
      );
}
