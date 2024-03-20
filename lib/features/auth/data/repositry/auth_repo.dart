import 'package:chef_app/core/database/api/api_consumer.dart';
import 'package:chef_app/core/database/api/end_points.dart';
import 'package:chef_app/core/errors/exceptions.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:chef_app/features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';

class AuthRepo {
  Future<Either<String, LoginModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await sl<ApiConsumer>().post(EndPoint.chefSignIn, data: {
        ApiKeys.email: email,
        ApiKeys.password: password,
      });
      return Right(
        LoginModel.fromJson(
          response,
        ),
      );
    } on ServerException catch (e) {
      return Left(
        e.errorModel.errorMessage,
      );
    }
  }

  Future<Either<String, String>> sendCode(String email) async {
    try {
      final response = await sl<ApiConsumer>().post(EndPoint.sendCode, data: {
        ApiKeys.email: email,
      });
      return Right(
        email,
      );
    } on ServerException catch (e) {
      return Left(
        e.errorModel.errorMessage,
      );
    }
  }

  // Future<Either<String, String>> resetPassword({
  //   required String email,
  //   required String password,
  //   required String confirmPassword,
  //   required String code,
  // }) async {
  //   try {
  //     final response =
  //         await sl<ApiConsumer>().post(EndPoint.changeForgottenPassword, data: {
  //       ApiKeys.email: email,
  //       ApiKeys.password: email,
  //       ApiKeys.confirmPassword: email,
  //       ApiKeys.code: email,
  //     });
  //     return Right(
  //       response[ApiKeys.message],
  //     );
  //   } on ServerException catch (e) {
  //     return Left(
  //       e.errorModel.errorMessage,
  //     );
  //   }
  // }
}
