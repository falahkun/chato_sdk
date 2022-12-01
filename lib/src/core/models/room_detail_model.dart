import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'room_detail_model.g.dart';

@JsonSerializable()
class RoomDetailModel extends Equatable {
  /**
   * {
      "room_id": 3,
      "room_type": "G",
      "room_name": "Saluran Percobaan 1",
      "room_desc": "SP",
      "room_icon": "",
      "group_name": "Saluran Percobaan 1",
      "group_desc": "SP",
      "created_by": null,
      "created_date": "2022-11-30T02:41:14.000Z",
      "user_count": 255,
      "last_message": "",
      "is_admin": 0,
      "room_group_type": "OPEN",
      "last_seen": ""
      }
   */

  factory RoomDetailModel.fromJson(Map<String, dynamic> json) => _$RoomDetailModelFromJson(json);

  @JsonKey(name: 'room_id')
  final int? roomId;
  @JsonKey(name: 'room_type')
  final String? roomType;
  @JsonKey(name: 'room_name')
  final String? roomName;
  @JsonKey(name: 'room_desc')
  final String? roomDesc;
  @JsonKey(name: 'room_icon')
  final String? roomIcon;
  @JsonKey(name: 'group_name')
  final String? groupName;
  @JsonKey(name: 'group_desc')
  final String? groupDesc;
  @JsonKey(name: 'created_by')
  final String? createdBy;
  @JsonKey(name: 'created_date')
  final String? createdDate;
  @JsonKey(name: 'user_count')
  final int? userCount;
  @JsonKey(name: 'last_message')
  final String? lastMessage;
  @JsonKey(name: 'is_admin')
  final int? isAdmin;
  @JsonKey(name: 'room_group_type')
  final String? roomGroupType;
  @JsonKey(name: 'last_send')
  final String? lastSeend;

  RoomDetailModel({
    this.roomId,
    this.roomType,
    this.roomName,
    this.roomDesc,
    this.roomIcon,
    this.groupName,
    this.groupDesc,
    this.createdBy,
    this.createdDate,
    this.userCount,
    this.lastMessage,
    this.isAdmin,
    this.roomGroupType,
    this.lastSeend,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        roomId,
        roomType,
        roomName,
        roomDesc,
        roomIcon,
        groupName,
        groupDesc,
        createdBy,
        createdDate,
        userCount,
        lastMessage,
        isAdmin,
        roomGroupType,
        lastSeend,
      ];
}
