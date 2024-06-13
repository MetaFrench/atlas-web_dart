void main(List<String> args) {
  if (args.isEmpty) {
    print('Please provide a score.');
    return;
  }

  try {
    int nb = int.parse(args[0]);
    assert(nb >= 80, 'The score must be bigger or equal to 80');
    print('You Passed');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
