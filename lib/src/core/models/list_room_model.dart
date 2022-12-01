import 'package:chato_sdk/src/core/models/user_room_model.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'last_message_model.dart';

part 'list_room_model.g.dart';

@JsonSerializable()
class ListRoomModel extends Equatable {
  ListRoomModel({
    required this.total,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    required this.listUser,
  });

  factory ListRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ListRoomModelFromJson(json);

  @JsonKey(defaultValue: 0)
  final int total;
  @JsonKey(name: 'per_page', defaultValue: 0)
  final int perPage;
  @JsonKey(name: 'current_page', defaultValue: "0")
  final String currentPage;
  @JsonKey(name: 'last_page', defaultValue: 0)
  final int lastPage;
  @JsonKey(name: 'list_user', defaultValue: [])
  final List<UserRoomModel> listUser;

  @override
  // TODO: implement props
  List<Object?> get props => [total, perPage, currentPage, lastPage, listUser];
}
