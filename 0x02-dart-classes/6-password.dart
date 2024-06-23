class Password {
  String _password;

  // Constructor to initialize the password
  Password({required String password}) : _password = password;

  // Getter for the password property
  String get password {
    return _password;
  }

  // Setter for the password property
  set password(String value) {
    _password = value;
  }

  // Method to check if the password is valid
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasNumber = _password.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasNumber;
  }

  // Override toString method to return the password as a string
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
