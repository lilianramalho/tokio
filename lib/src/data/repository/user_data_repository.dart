 import 'package:tokio/src/data/user_data.dart';

Future<Map<String, dynamic>> getUserInfoRepo() async{
    Map<String, dynamic> mapUserInfo = await getUserInfo();
    return mapUserInfo;
  }