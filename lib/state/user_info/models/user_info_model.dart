// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:collection' show MapView;

import 'package:flutter/foundation.dart' show immutable;

import 'package:instagram_clone/state/constants/firebase_field_name.dart';
import 'package:instagram_clone/state/posts/typedefs/user_id.dart';

@immutable
class UserInfoModel extends MapView<String, String?> {
  final UserId userId;
  final String displayName;
  final String? email;

  UserInfoModel({
    required this.userId,
    required this.displayName,
    required this.email,
  }) : super(
          {
            FirebaseFieldName.userId: userId,
            FirebaseFieldName.displayName: displayName,
            FirebaseFieldName.email: email,
          },
        );

  UserInfoModel.fromJson(
    Map<String, dynamic> json, {
    required UserId userId,
  }) : this(
          userId: userId,
          displayName: json[FirebaseFieldName.displayName] ?? '',
          email: FirebaseFieldName.email,
        );

  @override
  bool operator ==(covariant Object other) =>
      identical(this, other) ||
      other is UserInfoModel &&
          other.runtimeType == runtimeType &&
          other.userId == userId &&
          other.displayName == displayName &&
          other.email == email;

  @override
  int get hashCode => Object.hashAll(
        [
          userId.hashCode,
          displayName.hashCode,
          email.hashCode,
        ],
      );
}
