// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';

import '../../directus.dart';

class ServerHandler {
  Dio client;

  ServerHandler({required this.client});

  Future<String> ping() async {
    try {
      await client.get('/server/ping');
      return 'pong';
    } catch (e) {
      throw DirectusError.fromDio(e);
    }
  }

  Future<DirectusResponse<Map>> info() async {
    return DirectusResponse.fromRequest(() => client.get('/server/info'));
  }

  Future<DirectusResponse<Map>> oas() async {
    return DirectusResponse.fromRequest(() => client.get('/server/specs/oas'));
  }
}
