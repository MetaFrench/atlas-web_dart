List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((temp) {
    double tempInF = (temp * 9/5) + 32;
    return tempInF.toStringAsFixed(2);
  }).map(double.parse).toList();
}