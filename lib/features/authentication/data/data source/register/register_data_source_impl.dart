import 'package:academy/core/api%20manager/api_endpoints.dart';
import 'package:academy/core/api%20manager/api_manager.dart';
import 'package:academy/core/failures/failures.dart';
import 'package:academy/features/authentication/data/data%20source/register/register_data_source.dart';
import 'package:academy/features/authentication/data/model/register_response_dm.dart';
import 'package:academy/features/authentication/domain/entity/register_request_body.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RegisterDataSource)
class RegisterDataSourceImpl extends RegisterDataSource {
  ApiManager apiManager;
  RegisterDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Failures, RegisterResponseDm>> register({
    required RegisterRequestBody registerRequestBody,
  }) async {
    final List<ConnectivityResult> connectivityResult =
        await Connectivity().checkConnectivity();
    try {
      if (connectivityResult.contains(ConnectivityResult.wifi) ||
          connectivityResult.contains(ConnectivityResult.ethernet) ||
          connectivityResult.contains(ConnectivityResult.vpn) ||
          connectivityResult.contains(ConnectivityResult.bluetooth) ||
          connectivityResult.contains(ConnectivityResult.other) ||
          !connectivityResult.contains(ConnectivityResult.none) ||
          connectivityResult.contains(ConnectivityResult.mobile)) {
        var response = await apiManager.postData(
          path: ApiEndpoints.register,
          data: registerRequestBody.toJson(),
          options: Options(
            headers: {"Content-Type": "application/json"},
            validateStatus: (status) => true,
          ),
        );
        RegisterResponseDm registerResponse = RegisterResponseDm.fromJson(
          response.data,
        );
        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          return Right(registerResponse);
        }

        return Left(
          ServerError(
            errorMessage:
                registerResponse.errors?[''] != null
                    ? "${registerResponse.errors?['']?[0] ?? ''} ${registerResponse.errors?['']?[1] ?? ''}"
                    : (registerResponse.message ?? "Registration failed"),
          ),
        );
      } else {
        return Left(NetworkError(errorMessage: "Network Error"));
      }
    } catch (e) {
      return Left(ServerError(errorMessage: e.toString()));
      // rethrow;
    }
  }
}
