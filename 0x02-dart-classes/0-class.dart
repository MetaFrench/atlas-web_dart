class User implements Printable {
  final String _name;

  User(this._name);

  @override
  String toString() {
    return 'Hello $_name';
  }
}