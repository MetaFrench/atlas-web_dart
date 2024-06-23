class Password {
  String _password;

  // Constructor to initialize the password
  Password({required String password}) : _password = password;

  // Getter for the password property
  String get password => _password;

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
    bool hasNumber = _password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumber;
  }

  // Override toString method to return the password as a string
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

class User {
  int id;
  String name;
  int age;
  double height;
  String userPassword; // Add a new property called userPassword

  // Constructor with named parameters
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.userPassword,
  });

  // Convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'userPassword': userPassword, // Include userPassword in the JSON
    };
  }

  // Create a User object from JSON
  static User fromJson(Map<String, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      userPassword: userJson['userPassword'], // Initialize userPassword from JSON
    );
  }

  // Override toString method to return a formatted string representation of the User object
  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height, userPassword: $userPassword)';
  }
}
