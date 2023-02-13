import 'package:instagram_clone/state/image_upload/models/file_type.dart';

extension CollectionName on FileType {
  String get collectionName {
    switch (this) {
      case FileType.video:
        return 'video';
      case FileType.image:
        return 'image';
    }
  }
}
