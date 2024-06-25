List<double> convertToF(List<double> temperaturesInC) {
  double roundTwoDecimals(double n) {
    return double.parse(n.toStringAsFixed(2));
  }

  var temperaturesInF =
      temperaturesInC.map((t) => roundTwoDecimals((t * 9 / 5) + 32)).toList();
  return temperaturesInF;
}
