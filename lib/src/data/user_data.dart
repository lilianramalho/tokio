import 'package:dio/dio.dart';

Dio dio = Dio();

Future<Map<String, dynamic>> getUserInfo() async {
  final response = await dio
      .get("https://my-json-server.typicode.com/lilianramalho/demo/users");
  if (response.statusCode == 200) {
    return response.data[0];
  } else {
    return {'error': 'falha na comunicação com o servidor'};
  }
}
