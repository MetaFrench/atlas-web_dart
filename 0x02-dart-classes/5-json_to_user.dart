class User {
  int id;
  String name;
  int age;
  double height;

  // Constructor with named parameters
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  });

  // Convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Create a User object from JSON
  static User fromJson(Map<String, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // Override toString method to return a formatted string representation of the User object
  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }
}
