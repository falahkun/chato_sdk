
enum MessageType { image, text, polling, sticker, file, voice, video, label }


extension XStringX on String {
  MessageType toType() {
    switch(this) {
      case 'image':
        return MessageType.image;
      case 'text':
        return MessageType.text;
      case 'polling':
        return MessageType.polling;
      case 'sticker':
        return MessageType.sticker;
      case 'file':
        return MessageType.file;
      case 'voice':
        return MessageType.voice;
      case 'video':
        return MessageType.video;
      case 'label':
        return MessageType.label;
      default:
        return MessageType.text;
    }
  }
}

extension XMessageType on MessageType {
  MessageType fromString(String type) {
    switch(type) {
      case 'image':
        return MessageType.image;
      case 'text':
        return MessageType.text;
      case 'polling':
        return MessageType.polling;
      case 'sticker':
        return MessageType.sticker;
      case 'file':
        return MessageType.file;
      case 'voice':
        return MessageType.voice;
      case 'video':
        return MessageType.video;
      case 'label':
        return MessageType.label;
      default:
        return MessageType.text;
    }
  }

  String get value {
    switch(this) {
      case MessageType.image:
        return 'image';
      case MessageType.text:
        return 'text';
      case MessageType.polling:
        return 'polling';
      case MessageType.sticker:
        return 'sticker';
      case MessageType.file:
        return 'file';
      case MessageType.voice:
        return 'voice';
      case MessageType.video:
        return 'video';
      case MessageType.label:
        return 'label';
    }
  }
}