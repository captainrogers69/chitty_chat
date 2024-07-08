extension StringExtension on String {
  // String toTitleCase() {
  //   return toLowerCase().replaceAllMapped(
  //       RegExp(
  //           r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
  //       (Match match) {
  //     if (exceptions.contains(match[0])) {
  //       return match[0]!;
  //     }
  //     return "${match[0]![0].toUpperCase()}${match[0]!.substring(1).toLowerCase()}";
  //   }).replaceAll(RegExp(r'(_|-)+'), ' ');
  // }

  String capitalizeFirst() {
    if (isEmpty) {
      return this;
    } else {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    }
  }

  String lastChars(int n) => substring(length - n);

  String reverse() {
    return split('').reversed.join();
  }

  String isNotNullEmpty({String? temp}) {
    if (this != '') {
      return this;
    } else {
      return temp ?? '';
    }
  }
}

List<String> exceptions = [
  'a',
  'abaft',
  'about',
  'above',
  'afore',
  'after',
  'along',
  'amid',
  'among',
  'an',
  'apud',
  'as',
  'aside',
  'at',
  'atop',
  'below',
  'but',
  'by',
  'circa',
  'down',
  'for',
  'from',
  'given',
  'in',
  'into',
  'lest',
  'like',
  'mid',
  'midst',
  'minus',
  'near',
  'next',
  'of',
  'off',
  'on',
  'onto',
  'out',
  'over',
  'pace',
  'past',
  'per',
  'plus',
  'pro',
  'qua',
  'round',
  'sans',
  'save',
  'since',
  'than',
  'thru',
  'till',
  'times',
  'to',
  'under',
  'until',
  'unto',
  'up',
  'upon',
  'via',
  'vice',
  'with',
  'worth',
  'the","and',
  'nor',
  'or',
  'yet',
  'so'
];
