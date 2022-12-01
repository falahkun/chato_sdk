import 'package:chato_sdk/src/core/entities/list_chat.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'list_chat_model.g.dart';

@JsonSerializable()
class ListChatModel extends Equatable {
  final int total;
  @JsonKey(name: 'per_page')
  final int perPage;

  @JsonKey(name: 'detail_user')
  final DetailUserModel detailUser;
  final List<ChatModel> chat;

  @JsonKey(name: 'group_detail')
  final GroupDetailModel? groupDetail;

  factory ListChatModel.fromJson(Map<String, dynamic> json) =>
      _$ListChatModelFromJson(json);

  const ListChatModel(
      {required this.total,
      required this.perPage,
      required this.detailUser,
      this.groupDetail,
      required this.chat});

  Map toJson() => _$ListChatModelToJson(this);


  @override
  List<Object?> get props => [
        total,
        perPage,
        detailUser,
        chat,
      ];
}
