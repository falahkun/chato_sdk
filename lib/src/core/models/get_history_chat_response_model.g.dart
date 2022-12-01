// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_history_chat_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHistoryChatResponseModel _$GetHistoryChatResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetHistoryChatResponseModel(
      total: json['total'] as int,
      perPage: json['per_page'] as int,
      currentPage: json['current_page'] as String,
      prevPage: json['prev_page'] as String?,
      nextPage: json['next_page'] as String?,
      lastPage: json['last_page'] as int,
      detailUser: json['detail_user'],
      listUser: (json['list_user'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupDetail: json['group_detail'] == null
          ? null
          : GroupDetailModel.fromJson(
              json['group_detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetHistoryChatResponseModelToJson(
        GetHistoryChatResponseModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'prev_page': instance.prevPage,
      'next_page': instance.nextPage,
      'last_page': instance.lastPage,
      'detail_user': instance.detailUser,
      'list_user': instance.listUser,
      'group_detail': instance.groupDetail,
    };
