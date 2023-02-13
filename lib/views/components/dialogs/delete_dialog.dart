import 'package:flutter/foundation.dart' show immutable;
import 'package:instagram_clone/views/components/dialogs/alert_dialog_model.dart';

@immutable
class DeleteDialog extends AlertDialogModel<bool> {
  const DeleteDialog({
    required super.title,
    required super.message,
    required super.buttons,
  });
}
