class RegisterRequestBody {
  final String userName;
  final String email;
  final String password;

  RegisterRequestBody({
    required this.userName,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {'UserName': userName, 'Email': email, 'Password': password};
  }
}
