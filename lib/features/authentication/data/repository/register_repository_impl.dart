import 'package:academy/core/failures/failures.dart';
import 'package:academy/features/authentication/data/data%20source/register/register_data_source.dart';
import 'package:academy/features/authentication/domain/entity/register_request_body.dart';
import 'package:academy/features/authentication/domain/entity/register_response_entity.dart';
import 'package:academy/features/authentication/domain/repository/register_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RegisterRepository)
class RegisterRepositoryImpl extends RegisterRepository {
  final RegisterDataSource registerDataSource;
  RegisterRepositoryImpl({required this.registerDataSource});

  @override
  Future<Either<Failures, RegisterResponseEntity>> register(
    RegisterRequestBody registerRequestBody,
  ) async {
    var either = await registerDataSource.register(
      registerRequestBody: registerRequestBody,
    );
    return either.fold(
      (error) => Left(error),
      (response) => Right(response),
    );
  }
}
