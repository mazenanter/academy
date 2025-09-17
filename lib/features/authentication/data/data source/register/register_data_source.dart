import 'package:academy/core/failures/failures.dart';
import 'package:academy/features/authentication/data/model/register_response_dm.dart';
import 'package:academy/features/authentication/domain/entity/register_request_body.dart';
import 'package:either_dart/either.dart';

abstract class RegisterDataSource {
  Future<Either<Failures, RegisterResponseDm>> register({
    required RegisterRequestBody registerRequestBody,
  });
}
