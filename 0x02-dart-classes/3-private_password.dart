class Password {
  String _password = '';

  Password({String password = ''}) : _password = password;

  bool isValid() {
    RegExp hasUppercase = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,16}$');
    return hasUppercase.hasMatch(this._password);
  }
  @override
  String toString() {
    return 'Your Password is: ${this._password}';
  }

}