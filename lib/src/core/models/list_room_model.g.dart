// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListRoomModel _$ListRoomModelFromJson(Map<String, dynamic> json) =>
    ListRoomModel(
      total: json['total'] as int? ?? 0,
      perPage: json['per_page'] as int? ?? 0,
      currentPage: json['current_page'] as String? ?? '0',
      lastPage: json['last_page'] as int? ?? 0,
      listUser: (json['list_user'] as List<dynamic>?)
              ?.map((e) => UserRoomModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ListRoomModelToJson(ListRoomModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'list_user': instance.listUser,
    };
