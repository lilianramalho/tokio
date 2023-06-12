import 'package:get/get.dart';
import 'package:tokio/src/data/repository/user_data_repository.dart';
import 'package:tokio/src/domain/models/user_model.dart';

class UserController extends GetxController {
  late UserModel userModel;

  getUserInfo() async {
    Map<String, dynamic> result = await getUserInfoRepo();
    userModel = UserModel.fromJson(result);
    print(result);
  }
}
