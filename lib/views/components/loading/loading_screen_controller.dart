import 'package:flutter/foundation.dart' show immutable;

typedef ClosedLoadingScreen = bool Function();
typedef OpenLoadingScreen = bool Function(String text);

@immutable
class LoadingScreenController {
  final ClosedLoadingScreen close;
  final OpenLoadingScreen update;

  const LoadingScreenController({
    required this.close,
    required this.update,
  });
}
