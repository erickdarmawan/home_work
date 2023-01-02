class RegisterUser {
  String frontName = '';
  String lastName = '';
  String address = '';
  String email = '';
  String username = '';
  String password = '';
  String confirmPassword = '';

  RegisterUser({
    required this.frontName,
    required this.lastName,
    required this.address,
    required this.email,
    required this.username,
    required this.password,
    required this.confirmPassword,
  });
}
