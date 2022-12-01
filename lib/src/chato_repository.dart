import 'dart:io';

import 'package:chato_sdk/src/chato_controller.dart';
import 'package:chato_sdk/src/chato_interface.dart';
import 'package:chato_sdk/src/core/core.dart';
import 'package:chato_sdk/src/core/models/get_history_chat_response_model.dart';
import 'package:chato_sdk/src/core/models/list_room_model.dart';
import 'package:chato_sdk/src/core/models/models.dart';
import 'package:chato_sdk/src/core/models/room_detail_model.dart';
import 'package:dio/dio.dart';

import 'core/models/message_body.dart';

class ChatoRepository implements ChatoInterface {
  ChatoRepository(ChatoController controller) {
    _controller = controller;
    _dio = Dio()
      ..options.baseUrl = controller.url
      ..options.connectTimeout = 10000
      ..options.sendTimeout=10000
      ..options.headers.addAll({
        'customer_app_id': controller.custAppId,
        'customer_secret': controller.custSecret,
        'Authorization': 'Bearer ${controller.token}',
        'content-type': ContentType.json.value,
      })..interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
  }

  late Dio _dio;
  late ChatoController _controller;

  @override
  Future<ListRoomModel> getRoomChat(RoomChatParams params) async {
    _dio.options.headers.addAll({
      'Authorization': 'Bearer ${_controller.token}',
      'customer_app_id': _controller.custAppId,
    });

    final response = await _dio.get('/apix/chat/getListRoom?$params');
    return ListRoomModel.fromJson(response.data['result']);
  }

  @override
  Future<ListChatModel> getRoomMessages(RoomMessageParams params) async {
    _dio.options.headers.clear();
    _dio.options.baseUrl = _controller.url;
    _dio.options.headers.addAll({
      'Authorization': 'Bearer ${_controller.token}',
      // 'customer_app_id': _controller.custAppId,
    });

    final response = await _dio.get('/apix/v2/chat/getHistoryChat?$params');
    return ListChatModel.fromJson(response.data['result']);
  }

  @override
  Future<String> getToken(String clientToken) async {
    try {
      final response = await _dio.post('/api/getToken', data: {
        'customer_app_id': _controller.custAppId,
        'customer_secret': _controller.custSecret,
        'jwt_client': clientToken
      });

      if (response.data is! String && response.data['success']) {
        return response.data['result'];
      } else {
        throw GeneralServerException(message: response.data['message']);
      }
    } on DioError catch (err) {
      throw GeneralServerException(message: 'Error: $err');
    } catch (err) {
      throw ErrorCodeException(message: 'Error: $err', code: 0);
    }
  }

  @override
  Future<Map?> updateUserToken(String token,
      {required String deviceToken, String deviceType = 'ANDROID'}) async {
    _dio.options.headers.clear();
    _dio.options.baseUrl = _controller.url;
    _dio.options.headers.addAll({
      'Authorization': 'Bearer ${_controller.token}',
      'content-type': 'application/x-www-form-urlencoded',
    });

    try {
      final response = await _dio.post('/apix/updateDeviceToken', data: {
        'device_token': deviceToken,
        'device_type': deviceType,
      });

      if (response.data is! String && response.data['success']) {
        return response.data['result'];
      } else {
        throw GeneralServerException(message: response.data['message']);
      }
    } on DioError catch (err) {
      throw err;
    }
  }

  @override
  Future<Map> pinMesage(MessageBody messageBody) {
    // TODO: implement pinMesage
    throw UnimplementedError();
  }

  @override
  Future<Map> sendMessage(MessageBody messageBody) async {
    _dio.options.headers.clear();
    _dio.options.baseUrl = _controller.url;
    _dio.options.headers.addAll({
      'Authorization': 'Bearer ${_controller.token}',
      'content-type': 'application/x-www-form-urlencoded',
    });

    try {
      final response = await _dio.post('/apix/v2/chat/sendMessage', data: messageBody.toJson());

      if (response.data is! String && response.data['success']) {
        return response.data['result'];
      } else {
        throw GeneralServerException(message: response.data['message']);
      }
    } on DioError catch (err) {
      throw err;
    }
  }

  @override
  Future<Map> starMessage(MessageBody messageBody) {
    // TODO: implement starMessage
    throw UnimplementedError();
  }

  @override
  Future<GetHistoryChatResponseModel> getHistoryChat(
      RoomMessageParams params) async {
    try {
      _dio.options.headers.addAll({
        'Authorization': 'Bearer ${_controller.token}'
      });
      final response =
          await _dio.get('apix/v2/chat/getHistoryChat?$params');

      if (response.data is! String && response.data['success']) {
        return GetHistoryChatResponseModel.fromJson(response.data['result']);
      } else {
        throw GeneralServerException(message: response.data['message']);
      }
    } on DioError catch (err) {
      throw err;
    } catch (err) {
      throw Exception('Something Error!');
      // throw ErrorCodeException(message: 'Error: $err', code: 0);
    }
  }

  @override
  Future<RoomDetailModel> getRoomDetail(String roomCode) async {
    try {
      _dio.options.headers.addAll({
        'Authorization': 'Bearer ${_controller.token}'
      });
      final response =
      await _dio.get('apix/v2/chat/getRoomDetail?room_code=$roomCode');

      if (response.data is! String && response.data['success']) {
        return RoomDetailModel.fromJson(response.data['result']);
      } else {
        throw GeneralServerException(message: response.data['message']);
      }
    } on DioError catch (err) {
      throw err;
    } catch (err) {
      throw Exception('Something Error!');
      // throw ErrorCodeException(message: 'Error: $err', code: 0);
    }
  }

  @override
  Future<MediaResponseModel> uploadMedia(File file) async {
    try {
      _dio.options.headers.addAll({
        'Authorization': 'Bearer ${_controller.token}'
      });
      var formData = FormData.fromMap({
        'file_name': await MultipartFile.fromFile(file.path)
      });
      final response = await _dio.post('apix/media/uploadFile', data: formData);

      if (response.data is! String && response.data['success']) {
        return MediaResponseModel.fromJson(response.data['result']);
      } else {
        throw GeneralServerException(message: response.data['message']);
      }
    } on DioError catch (err) {
      throw err;
    } catch (err) {
      throw Exception('Something Error!');
      // throw ErrorCodeException(message: 'Error: $err', code: 0);
    }
  }
}
