import 'package:academy/core/failures/failures.dart';
import 'package:academy/features/authentication/domain/entity/register_request_body.dart';
import 'package:academy/features/authentication/domain/entity/register_response_entity.dart';
import 'package:academy/features/authentication/domain/repository/register_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUseCase {
  final RegisterRepository registerRepository;
  RegisterUseCase({required this.registerRepository});
  Future<Either<Failures, RegisterResponseEntity>> registerInvoke(
    RegisterRequestBody registerRequestBody,
  ) {
    return registerRepository.register(registerRequestBody);
  }
}
