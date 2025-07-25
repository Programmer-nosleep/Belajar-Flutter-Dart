void main() {
  double number = -12.345;

  print('number: $number');
  print('sign: ${number.sign}');
  print('isNaN: ${number.isNaN}');
  print('isNegative: ${number.isNegative}');
  print('isInfinite: ${number.isInfinite}');
  print('isFinite: ${number.isFinite}');
  print('hashCode: ${number.hashCode}');

  print('\n=== Math Methods ===');
  print('abs(): ${number.abs()}');
  print('ceil(): ${number.ceil()}');
  print('ceilToDouble(): ${number.ceilToDouble()}');
  print('floor(): ${number.floor()}');
  print('floorToDouble(): ${number.floorToDouble()}');
  print('round(): ${number.round()}');
  print('roundToDouble(): ${number.roundToDouble()}');
  print('truncate(): ${number.truncate()}');
  print('truncateToDouble(): ${number.truncateToDouble()}');
  print('toInt(): ${number.toInt()}');
  print('toDouble(): ${number.toDouble()}');

  print('\n=== Comparison and Format ===');
  print('clamp(-10, 10): ${number.clamp(-10, 10)}');
  print('remainder(5): ${number.remainder(5)}');
  print('compareTo(0): ${number.compareTo(0)}');
  print('toString(): ${number.toString()}');
  print('toStringAsFixed(2): ${number.toStringAsFixed(2)}');
  print('toStringAsExponential(3): ${number.toStringAsExponential(3)}');
  print('toStringAsPrecision(4): ${number.toStringAsPrecision(4)}');
}
