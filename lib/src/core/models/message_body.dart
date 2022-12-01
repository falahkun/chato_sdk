import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_body.g.dart';

/*
message:Tes 005
message_type:text
//message_file:https://api.chato.id:3017/public/image/518_1633487853-file_example_WAV_1MG.wav
payload:1
to_user_id:725
//message_file_type:jpeg
//message_file_name:file1
//message_file_thumbnail:http://cloudinary.com/file
//message_file_url:http://cloudinary.com/file
//message_file_duration:112
//message_is_replay:1
//message_is_forward:1
//message_id:
//mention_user:["100","101"]
room_id:1782
 */

@JsonSerializable(createFactory: false)
class MessageBody extends Equatable {
  final String message;
  @JsonKey(name: 'message_type')
  final String messageType;
  final int? payload;
  @JsonKey(name: 'to_user_id')
  final int? toUserId;
  @JsonKey(name: 'message_file_type')
  final String? messageFileType;
  @JsonKey(name: 'message_file_name')
  final String? messageFileName;
  @JsonKey(name: 'message_file_thumbnail')
  final String? messageFileThumbnail;
  @JsonKey(name: 'message_file_url')
  final String? messageFileUrl;
  @JsonKey(name: 'message_file_duration')
  final int? messageFileDuration;
  @JsonKey(name: 'message_is_replay')
  final int? messageIsReplay;
  @JsonKey(name: 'message_is_forward')
  final int? messageIsForward;
  @JsonKey(name: 'message_id')
  final int? messageId;
  @JsonKey(name: 'mention_user')
  final List<dynamic>? mentionUser;
  @JsonKey(name: 'room_id')
  final int roomId;

  MessageBody({
    required this.message,
    required this.messageType,
    required this.roomId,
    this.payload,
    this.toUserId,
    this.messageFileType,
    this.messageFileName,
    this.messageFileThumbnail,
    this.messageFileUrl,
    this.messageFileDuration,
    this.messageIsReplay,
    this.messageIsForward,
    this.messageId,
    this.mentionUser,
  });

  Map toJson() => _$MessageBodyToJson(this);

  @override
  List<Object?> get props => [
    message,
    messageType,
    roomId,
    payload,
    toUserId,
    messageFileType,
    messageFileName,
    messageFileThumbnail,
    messageFileUrl,
    messageFileDuration,
    messageIsReplay,
    messageIsForward,
    messageId,
    mentionUser,
  ];
}
