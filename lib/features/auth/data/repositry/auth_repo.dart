import 'package:chef_app/core/database/api/api_consumer.dart';
import 'package:chef_app/core/database/api/end_points.dart';
import 'package:chef_app/core/services/service_locator.dart';

class AuthRepo {
  void login({required String email, required String password}) async {
    sl<ApiConsumer>().post(EndPoint.chefSignIn, data: {
      ApiKeys.email: email,
      ApiKeys.password: password,
    });
  }
}
