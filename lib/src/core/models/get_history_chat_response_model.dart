import 'package:chato_sdk/src/core/models/group_detail_model.dart';
import 'package:chato_sdk/src/core/models/user_model.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'get_history_chat_response_model.g.dart';

/**
 * {
    "success": true,
    "message": "Get History Chat v2",
    "result": {
    "total": 97,
    "per_page": 20,
    "current_page": "1",
    "prev_page": null,
    "next_page": "11",
    "last_page": 5,
    "detail_user": {},
    "list_user": [

    ],
    "group_detail": {
    "group_admin": [],
    "group_type": "OPEN",
    "group_is_active": 1,
    "group_is_deleted": 0,
    "pinned_message": ""
    }
    }
    }
 */

@JsonSerializable()
class GetHistoryChatResponseModel extends Equatable {
  final int total;
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'current_page')
  final String currentPage;
  @JsonKey(name: 'prev_page')
  final String? prevPage;
  @JsonKey(name: 'next_page')
  final String? nextPage;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'detail_user')
  final dynamic detailUser;
  @JsonKey(name: 'list_user')
  final List<UserModel> listUser;
  @JsonKey(name: 'group_detail')
  final GroupDetailModel? groupDetail;

  factory GetHistoryChatResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetHistoryChatResponseModelFromJson(json);

  GetHistoryChatResponseModel({
    required this.total,
    required this.perPage,
    required this.currentPage,
    required this.prevPage,
    required this.nextPage,
    required this.lastPage,
    required this.detailUser,
    required this.listUser,
    required this.groupDetail,
  });

  Map toJson() => _$GetHistoryChatResponseModelToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        total,
        perPage,
        currentPage,
        prevPage,
        nextPage,
        lastPage,
        detailUser,
        listUser,
        groupDetail,
      ];
}
