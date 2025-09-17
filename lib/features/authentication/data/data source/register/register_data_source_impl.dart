import 'package:academy/core/failures/failures.dart';
import 'package:academy/features/authentication/data/data%20source/register/register_data_source.dart';
import 'package:academy/features/authentication/data/model/register_response_dm.dart';
import 'package:academy/features/authentication/domain/entity/register_request_body.dart';
import 'package:either_dart/src/either.dart';

class RegisterDataSourceImpl extends RegisterDataSource {
  @override
  Future<Either<Failures, RegisterResponseDm>> register({
    required RegisterRequestBody registerRequestBody,
  }) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
