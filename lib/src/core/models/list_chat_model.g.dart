// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListChatModel _$ListChatModelFromJson(Map<String, dynamic> json) =>
    ListChatModel(
      total: json['total'] as int,
      perPage: json['per_page'] as int,
      detailUser:
          DetailUserModel.fromJson(json['detail_user'] as Map<String, dynamic>),
      groupDetail: json['group_detail'] == null
          ? null
          : GroupDetailModel.fromJson(
              json['group_detail'] as Map<String, dynamic>),
      chat: (json['chat'] as List<dynamic>)
          .map((e) => ChatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListChatModelToJson(ListChatModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'detail_user': instance.detailUser,
      'chat': instance.chat,
      'group_detail': instance.groupDetail,
    };
