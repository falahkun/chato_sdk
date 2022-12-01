import 'package:chato_sdk/src/chato_controller.dart';
import 'package:flutter/material.dart';

typedef _errBuilder = Widget Function(BuildContext context, dynamic err);
typedef _builder = Widget Function(BuildContext context, List data);
typedef _pBuilder = Widget Function(BuildContext context);

class ChatoRoomBuilder extends StatefulWidget {
  const ChatoRoomBuilder(
      {Key? key,
      required this.controller,
      required this.builder,
      this.errorBuilder,
      this.placeholderBuilder})
      : super(key: key);

  final ChatoController controller;
  final _builder builder;
  final _errBuilder? errorBuilder;
  final _pBuilder? placeholderBuilder;

  @override
  State<ChatoRoomBuilder> createState() => _ChatoRoomBuilderState();
}

class _ChatoRoomBuilderState extends State<ChatoRoomBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
