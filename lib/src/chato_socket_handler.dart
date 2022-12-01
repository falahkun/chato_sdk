import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:socket_io_client/socket_io_client.dart';

import '../src/chato_controller.dart';

class ChatoSocketHandler {
  late Socket _socket;

  ChatoSocketHandler(ChatoController controller) {
    _socket = io(
        controller.socket,
        OptionBuilder()
            .setExtraHeaders({'authorization': 'Bearer ${controller.token}'})
            .setQuery({'access_token': controller.token})
            .setTransports(['websocket'])
            .enableAutoConnect()
            .enableForceNew()
            .enableForceNewConnection()
            .enableReconnection()
            .build())
      ..connect()
      ..onConnectError(
              (data) => log('onEvent(event: "onConnectError", data: $data)'))
      ..on('new_message', (data) {
        log('onEvent(event: "new_message", data: $data)');
        _onNewMessage.sink.add(data);
      })
      ..on('listen_to_room', (data) {
        log('onEvent(event: "listen_to_room", data: $data)');
        _onTyping.sink.add(data);
      })
      ..on('listen_update_status', (data) {
        log('onEvent(event: "listen_update_status", data: $data)');
        _onUpdateStatus.sink.add(data);
      })..onConnectError((data) {
        log('onConnectError(data: $data)');
      });

  }
  final _onNewMessage = StreamController<String>.broadcast();
  final _onTyping = StreamController<String>.broadcast();
  final _onUpdateStatus = StreamController<dynamic>.broadcast();

  /// [onNewsMessage] digunakan untuk mendengarkan apabila ada pesan baru yang masuk, kembalian berupa string
  Stream<String> get onNewsMessage => _onNewMessage.stream.asBroadcastStream();

  Stream<dynamic> get onUpdateStatus => _onUpdateStatus.stream.asBroadcastStream();

  /// [onTyping] digunakan untuk mendengarkan apabila ada lawan chat sedang mengetik, kembalian berupa string
  Stream<String> get onTyping => _onTyping.stream.asBroadcastStream();

  void dispose() {
    _onNewMessage.close();
    _onTyping.close();
  }

  void emit(String event, {Map<String, dynamic>? data}) {
    assert(_socket != null, 'Please call function [init] first');
    final emitData = data;
    log('onEmit(event: $event, socketStatus: ${_socket.connected}, data: $emitData)',
        name: 'Chato');
    _socket.emit(event, emitData);
    _socket.emitWithAck(event, json.encode(emitData), ack: (value) {
      log('onEmitWithAck(event: $event, data: $value)', name: 'Chato');
    }, binary: false);
  }

}