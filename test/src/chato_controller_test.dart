import 'package:chato_sdk/chato_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('variable controller', () {
   test('basic instance of controller', () {
     final controller = ChatoController(
         customerSecret: 'customer-secret',
         customerAppId: 'customer-app-id',
         baseUrl: 'base-url',
         socketUrl: 'socket-url');

     final instanceOfController = ChatoController.instance;

     expect(controller.custSecret, instanceOfController.custSecret);
   });

   test('matching instance variable with constant', () {
     const customerSecret = 'customer-secret';

     final controller = ChatoController(
         customerSecret: customerSecret,
         customerAppId: 'customer-app-id',
         baseUrl: 'base-url',
         socketUrl: 'socket-url');

     expect(controller.custSecret, customerSecret);
   });
  });
}
