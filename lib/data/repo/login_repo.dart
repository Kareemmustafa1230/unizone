import 'package:dartz/dartz.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../../../../core/databases/api/api_consumer.dart';
import '../../../../core/databases/api/end_points.dart';
import '../../../../core/databases/cache/cache_helper.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/login_user_response.dart';

class LoginRepository {
  final ApiConsumer api;

  LoginRepository({required this.api});
  Future<Either<String, LoginUserResponse>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await api.post(
        EndPoints.login,
        isFormData: true,
        data: {
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.typeAccount : 'gmail'
        },
      );
      final user = LoginUserResponse.fromJson(response);
      final decodedToken = JwtDecoder.decode(user.data!.token!);
      CacheHelper().saveData(key: ApiKey.token, value: user.data?.token!);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      print(user);
      return Right(user);
    } on ServerException catch (e) {
      return Left(e.errorModel.message);
    }
  }
}