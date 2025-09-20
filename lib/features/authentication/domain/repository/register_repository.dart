import 'package:academy/core/failures/failures.dart';
import 'package:academy/features/authentication/domain/entity/register_request_body.dart';
import 'package:academy/features/authentication/domain/entity/register_response_entity.dart';
import 'package:either_dart/either.dart';

abstract class RegisterRepository {
  Future<Either<Failures, RegisterResponseEntity>> register(
    RegisterRequestBody registerRequestBody,
  );
}
