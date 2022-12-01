import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:chato_sdk/chato_sdk.dart';
import 'package:chato_sdk/src/chato_repository.dart';
import 'package:chato_sdk/src/chato_socket_handler.dart';

import 'core/models/models.dart';

class ChatoController {
  static final ChatoController instance = ChatoController._internal();

  factory ChatoController({
    /// chato customer secret
    required String customerSecret,

    /// chato customer app Id
    required String customerAppId,

    /// [baseUrl] chato base url
    required String baseUrl,

    /// [socketUrl] chato socket url
    required String socketUrl,

    /// [chatoToken] chato jwt token
    String? chatoToken,

    /// [refreshToken] chato jwt refresh token
    String? refreshToken,

    /// [clientToken] if [chatoToken] is null, [clientToken] has been required
    /// to get [chatoToken]
    String? clientToken,

    /// [deviceToken] device token from fcm
    String? deviceToken,

    /// [deviceType] device type default is [ANDROID] if is ios please fill like this [IOS]
    String? deviceType,
  }) {
    instance.custAppId = customerAppId;
    instance.custSecret = customerSecret;
    instance.url = baseUrl;
    instance.socket = socketUrl;
    instance.token = chatoToken;
    instance.refToken = refreshToken;
    instance.clToken = clientToken;
    instance.dToken = deviceToken;
    instance.dType = deviceType ?? 'ANDROID';

    return instance;
  }

  ChatoController._internal();

  ChatoRepository get _repository => ChatoRepository(instance);

  ChatoSocketHandler get _socketHandler => ChatoSocketHandler(instance);

  /// [onNewsMessage] digunakan untuk mendengarkan apabila ada pesan baru yang masuk, kembalian berupa string
  Stream<String> get onNewsMessage => _socketHandler.onNewsMessage;

  /// [onTyping] digunakan untuk mendengarkan apabila ada lawan chat sedang mengetik, kembalian berupa string
  Stream<String> get onTyping => _socketHandler.onTyping;

  Stream<dynamic> get onUpdateStatus => _socketHandler.onUpdateStatus;

  late String custSecret;

  late String custAppId;

  /// [_baseUrl] input your chato baseUrl
  late String url;

  /// [_socketUrl] input your chato socket url
  late String socket;

  /// [_chatoToken] chato jwt token
  late String? token;

  /// [_refreshToken] chato jwt refresh token
  late String? refToken;

  /// [_clientToken] if [_chatoToken] is null, [_clientToken] has been required
  /// to get [chatoToken]
  late String? clToken;

  /// [_deviceToken] device token from fcm
  late String? dToken;
  late String? dType;

  /// call if you need to get chato token
  Future<void> initialize() async {
    try {
      // late var _getToken;
      // if (clToken != null) {
      //   _getToken = await _repository.getToken(clToken!);
      // }
      // token = _getToken ?? token;
      log('TOKEN=$token');
      await _repository.updateUserToken(token!,
          deviceType: dType!, deviceToken: dToken!);
    } catch (err) {
      throw err;
    }
  }

  void emit(String event, {Map<String, dynamic>? data}) =>
      _socketHandler.emit(event, data: data);

  Future<GetHistoryChatResponseModel> getHistoryChat(
          RoomMessageParams params) =>
      _repository.getHistoryChat(params);

  Future<Map> sendMessage(MessageBody body) => _repository.sendMessage(body);

  Future<RoomDetailModel> getRoomDetail(String roomCode) =>
      _repository.getRoomDetail(roomCode);

  Future<MediaResponseModel> uploadMedia(File file) =>
      _repository.uploadMedia(file);

  @override
  String toString() {
    return 'ChatoController(customer_secret: $custSecret, customer_app_id: $custAppId, base_url: $url, socket_url: $socket, chatoToken: $token, refreshToken: $refToken, clientToken: $clToken, deviceToken: $dToken, deviceType: $dType)';
  }
}
