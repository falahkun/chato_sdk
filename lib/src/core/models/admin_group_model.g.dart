// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminGroupModel _$AdminGroupModelFromJson(Map<String, dynamic> json) =>
    AdminGroupModel(
      userId: json['user_id'] as int,
      userName: json['user_name'] as String,
      userUsername: json['user_username'] as String,
      userPhoto: json['user_photo'] as String,
    );

Map<String, dynamic> _$AdminGroupModelToJson(AdminGroupModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_username': instance.userUsername,
      'user_photo': instance.userPhoto,
    };
