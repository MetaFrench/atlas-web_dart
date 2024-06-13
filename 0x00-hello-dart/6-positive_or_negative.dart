void main(List<String> args) {
  int givenNum = int.parse(args[0]);
  if(givenNum > 0) {
    print('$givenNum is positive');
  } else if(givenNum < 0) {
    print('$givenNum is negative');
  } else {
    print('$givenNum is zero');
  }
}