import 'package:academy/features/authentication/domain/entity/register_response_entity.dart';

class RegisterResponseDm extends RegisterResponseEntity {
  RegisterResponseDm({super.statusCode, super.message, super.errors});

  factory RegisterResponseDm.fromJson(Map<String, dynamic> json) {
    return RegisterResponseDm(
      statusCode: json['statusCode'] ?? 0,
      message: json['message'] ?? '',
      errors:
          (json['errors'] as Map<String, dynamic>?)?.map(
            (key, value) => MapEntry(key, List<String>.from(value as List)),
          ) ??
          {},
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {'statusCode': statusCode, 'message': message, 'errors': errors};
  }
}
