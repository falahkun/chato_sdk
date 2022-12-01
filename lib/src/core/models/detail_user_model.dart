import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entities/entities.dart';

part 'detail_user_model.g.dart';

@JsonSerializable()
class DetailUserModel extends Equatable {
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'usser_name')
  final String usserName;
  @JsonKey(name: 'is_online')
  final bool isOnline;
  @JsonKey(name: 'last_seen')
  final String lastSeen;

  const DetailUserModel({
    required this.userId,
    required this.usserName,
    this.isOnline = false,
    required this.lastSeen,
  });

  factory DetailUserModel.fromJson(Map<String, dynamic> json) =>
      _$DetailUserModelFromJson(json);

  DetailUser toEntity() => DetailUser(
      userId: userId,
      usserName: usserName,
      lastSeen: lastSeen,
      isOnline: isOnline);

  Map toJson() => _$DetailUserModelToJson(this);

  @override
  List<Object?> get props => [userId, usserName, lastSeen, isOnline];
}
