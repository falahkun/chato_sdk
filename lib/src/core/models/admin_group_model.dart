import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entities/entities.dart';

part 'admin_group_model.g.dart';

@JsonSerializable()
class AdminGroupModel extends Equatable {
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'user_name')
  final String userName;
  @JsonKey(name: 'user_username')
  final String userUsername;
  @JsonKey(name: 'user_photo')
  final String userPhoto;

  factory AdminGroupModel.fromJson(Map<String, dynamic> json) =>
      _$AdminGroupModelFromJson(json);

  const AdminGroupModel(
      {required this.userId,
      required this.userName,
      required this.userUsername,
      required this.userPhoto});

  @override
  List<Object?> get props => [userId, userName, userUsername, userPhoto];

  Map toJson() => _$AdminGroupModelToJson(this);

  AdminGroup toEntity() => AdminGroup(
      userId: userId,
      userName: userName,
      userUsername: userUsername,
      userPhoto: userPhoto);
}
