List<int> longestSequence(List<int> list) {
  list.sort();
  List<int> longstSeq = [list[0]];
  List<int> currSeq = [list[0]];

  for (int i = 1; i < list.length; i++) {
    if (list[i] == list[i - 1] + 1) {
      currSeq.add(list[i]);
    } else {
      if (currSeq.length > longstSeq.length) {
        longstSeq = currSeq;
      }
      currSeq = [list[i]];
    }
  }
  return longstSeq;
}

void main() {
  List<int> intList = [
    59,
    2,
    45,
    78,
    46,
    98,
    32,
    15,
    67,
    75,
    20,
    98,
    79,
    49,
    5,
    28,
    38,
    49,
    37,
    12,
    49,
    64,
    19,
    48,
    73
  ];
  List<int> consecutiveSeq = longestSequence(intLst);
  print("Longest Consecutive Sequence = $consecutiveSeq");
}
