import 'package:chato_sdk/src/core/models/user_room_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('if all field filled', () {
    var match = {
      "room_id": 1,
      "is_mention": 0,
      "room_type": "D",
      "room_code": "5-1650404892",
      "room_name": "Starcord Company",
      "room_nick_name": "",
      "room_desc": "Starcord Company",
      "room_photo": "",
      "group_name": "",
      "group_desc": "",
      "user_id": 6,
      "user_username": "starcordcompanyy",
      "user_name": "Starcord Company",
      "nick_name": null,
      "user_photo": "",
      "user_nip": 6,
      "is_online": 0,
      "message_id": 60,
      "last_message": "Halo",
      "is_own": 0,
      "last_date": "2022-04-25",
      "last_time": "10:39",
      "is_pined": 0,
      "unread_message": 0,
      "user_count": 0,
      "message_is_deleted": 0,
      "label_id": [],
      "label_title": [],
      "label_color": [],
      "detail_last_message": {
        "message_id": 60,
        "message_text": "Halo",
        "message_type": "text",
        "message_status": "READ",
        "message_attachment": "",
        "from_user_id": 6,
        "to_user_id": 5,
        "from_username": "Starcord Company",
        "to_username": "Starcord Company",
        "is_own": 0,
        "is_deleted": 0
      }
    };

    UserRoomModel ex = UserRoomModel.fromJson(match);
    expect(ex.roomId, 1);
    expect(ex.isMention, 0);
    expect(ex.roomType, 'D');
    expect(ex.nickName, '');
    expect(ex.detailLastMessage.messageId, 60);
    expect(ex.detailLastMessage.messageText, 'Halo');
    expect(ex.detailLastMessage.messageType, 'text');
    expect(ex.detailLastMessage.messageStatus, 'READ');
    expect(ex.detailLastMessage.messageAttachment, '');
    expect(ex.detailLastMessage.fromUserId, 6);
    expect(ex.detailLastMessage.toUserId, 5);
    expect(ex.detailLastMessage.fromUsername, 'Starcord Company');
    expect(ex.detailLastMessage.toUsername, 'Starcord Company');
    expect(ex.detailLastMessage.isOwn, 0);
    expect(ex.detailLastMessage.isDeleted, 0);
  });
}