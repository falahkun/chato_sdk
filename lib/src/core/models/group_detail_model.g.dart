// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupDetailModel _$GroupDetailModelFromJson(Map<String, dynamic> json) =>
    GroupDetailModel(
      groupAdmin: (json['group_admin'] as List<dynamic>)
          .map((e) => AdminGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupType: json['group_type'] as String,
      groupIsActive: json['group_is_active'] as int,
      groupIsDeleted: json['group_is_deleted'] as int,
      pinnedMessage: json['pinned_message'] as String,
    );

Map<String, dynamic> _$GroupDetailModelToJson(GroupDetailModel instance) =>
    <String, dynamic>{
      'group_type': instance.groupType,
      'group_is_active': instance.groupIsActive,
      'group_is_deleted': instance.groupIsDeleted,
      'pinned_message': instance.pinnedMessage,
      'group_admin': instance.groupAdmin,
    };
