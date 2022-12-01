import 'package:chato_sdk/src/core/core.dart';

enum RoomChatType {
  Personal, Group
}

extension RoomChatTypeX on RoomChatType {
  String get params {
    if (this == RoomChatType.Group) {
      return 'G';
    } else if (this == RoomChatType.Personal) {
      return 'D';
    } else {
      throw ErrorCodeException(message: 'No room type found!');
    }
  }
}