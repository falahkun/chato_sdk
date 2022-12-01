import 'package:chato_sdk/src/core/models/last_message_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('if all field filled', () {
    var match = {
      "message_id": 60,
      "message_text": "Halo",
      "message_type": "text",
      "message_status": "READ",
      "message_attachment": '',
      "from_user_id": 6,
      "to_user_id": 5,
      "from_username": "Starcord Company",
      "to_username": "Starcord Company",
      "is_own": 0,
      "is_deleted": 0
    };

    LastMessageModel ex = LastMessageModel.fromJson(match);
    expect(ex.messageId, 60);
    expect(ex.messageText, 'Halo');
    expect(ex.messageType, 'text');
    expect(ex.messageStatus, 'READ');
    expect(ex.messageAttachment, '');
    expect(ex.fromUserId, 6);
    expect(ex.toUserId, 5);
    expect(ex.fromUsername, 'Starcord Company');
    expect(ex.toUsername, 'Starcord Company');
    expect(ex.isOwn, 0);
    expect(ex.isDeleted, 0);
  });

  test('if all field null', () {
    var match = {
      "message_id": null,
      "message_text": null,
      "message_type": null,
      "message_status": null,
      "message_attachment": null,
      "from_user_id": null,
      "to_user_id": null,
      "from_username": null,
      "to_username": null,
      "is_own": null,
      "is_deleted": null
    };

    LastMessageModel ex = LastMessageModel.fromJson(match);
    expect(ex.messageId, 0);
    expect(ex.messageText, '');
    expect(ex.messageType, '');
    expect(ex.messageStatus, '');
    expect(ex.messageAttachment, '');
    expect(ex.fromUserId, 0);
    expect(ex.toUserId, 0);
    expect(ex.fromUsername, '');
    expect(ex.toUsername, '');
    expect(ex.isOwn, 0);
    expect(ex.isDeleted, 0);
  });
}