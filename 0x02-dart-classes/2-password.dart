class Password {
  String password = '';

  
  Password({String password = ''}) : password = password;

  bool isValid() {
    RegExp hasUppercase = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,16}$');
    return hasUppercase.hasMatch(password);
  }
  @override
  String toString() {
    return 'Your Password is: $password';
  }

}