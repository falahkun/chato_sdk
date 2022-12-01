import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entities/entities.dart';
import 'models.dart';

part 'group_detail_model.g.dart';

@JsonSerializable()
class GroupDetailModel extends Equatable {
  @JsonKey(name: 'group_type')
  final String groupType;
  @JsonKey(name: 'group_is_active')
  final int groupIsActive;
  @JsonKey(name: 'group_is_deleted')
  final int groupIsDeleted;
  @JsonKey(name: 'pinned_message')
  final String pinnedMessage;
  @JsonKey(name: 'group_admin')
  final List<AdminGroupModel> groupAdmin;

  factory GroupDetailModel.fromJson(Map<String, dynamic> json) =>
      _$GroupDetailModelFromJson(json);

  const GroupDetailModel(
      {required this.groupAdmin,
      required this.groupType,
      required this.groupIsActive,
      required this.groupIsDeleted,
      required this.pinnedMessage});

  @override
  List<Object?> get props => [
        groupAdmin,
        groupType,
        groupIsActive,
        groupIsDeleted,
        pinnedMessage,
      ];

  Map toJson() => _$GroupDetailModelToJson(this);
}
