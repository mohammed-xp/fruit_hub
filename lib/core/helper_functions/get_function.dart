import 'dart:convert';

import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/services/prefs.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entites/user_entity.dart';

UserEntity getUser() {
  String jsonString = Prefs.getString(kUserData);

  // UserEntity userEntity = UserModel.fromJson(jsonDecode(jsonString));

  UserModel userModel = UserModel.fromJson(jsonDecode(jsonString));

  UserEntity userEntity = userModel.toEntity();

  return userEntity;
}
