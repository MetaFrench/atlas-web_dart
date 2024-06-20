class User {
  final String _name;

  User(this._name);

  String showName() {
    return 'Hello $_name';
  }
}