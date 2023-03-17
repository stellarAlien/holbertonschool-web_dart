class Password {
  String _password = '';

  Password({String password = ''}) : _password = password;
  
  String get password => _password;

  set password(String password) {
    _password = password;
  }

  bool isValid() {
    RegExp hasUppercase = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,16}$');
    print(this._password);
    return hasUppercase.hasMatch(this._password);
  }
  @override
  String toString() {
    return 'Your Password is: ${this._password}';
  }

}