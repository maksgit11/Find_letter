void main() {
  bukva(5, 'asdfg', [1, 110000, 12, 25, 500]);
}

void bukva(int n, String s, List<int> a) {
  var result = <int>[];
  for (int i = 0; i < a.length; i++) {
    if (i == 0) {
      result.add(a[0]);
    } else {
      result.add(a[i] - a[i - 1]);
    }
  }

  int indexOfMax(result) {
    if (result.length == 0) {
      return -1;
    }
    var max = result[0];
    var maxIndex = 0;
    for (var i = 1; i < result.length; i++) {
      if (result[i] > max) {
        maxIndex = i;
        max = result[i];
      }
    }
    return maxIndex;
  }

  return print(s[indexOfMax(result)]);
}
