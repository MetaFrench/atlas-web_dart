void main(List<String> args) {
  int givenNum = int.parse(args[0]);
  assert(givenNum >= 80, 'The score must be bigger or equal to 80');
  print('You Passed');
}