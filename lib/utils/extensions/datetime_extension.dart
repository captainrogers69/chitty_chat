import 'package:intl/intl.dart';

String dateForm = 'dd/MM/yyyy';
String timeForm = 'h:mm a';

final now = DateTime.now();
final today = DateTime(now.year, now.month, now.day);
final yest = DateTime(now.year, now.month, now.day - 1);
final tomo = DateTime(now.year, now.month, now.day + 1);

bool isTheSameDay({required DateTime start, required DateTime end}) {
  if (start.day == end.day &&
      start.month == end.month &&
      start.year == end.year) {
    return true;
  } else {
    return false;
  }
}

bool isTheSameDayTime({required DateTime start, required DateTime end}) {
  if (start.day == end.day &&
      start.month == end.month &&
      start.year == end.year &&
      start.minute == end.minute &&
      start.hour == end.hour) {
    return true;
  } else {
    return false;
  }
}

String agoFormatter(DateTime datt, {bool needAgo = true}) {
  String daysAgo = '';
  String timeAgo = '';
  if (DateFormat(dateForm).format(today) == DateFormat(dateForm).format(datt)) {
    daysAgo = 'Today';
  } else if (DateFormat(dateForm).format(yest) ==
      DateFormat(dateForm).format(datt)) {
    daysAgo = 'Yesterday';
  } else if (DateFormat(dateForm).format(tomo) ==
      DateFormat(dateForm).format(datt)) {
    daysAgo = 'Tomorrow';
  } else {
    daysAgo = DateFormat(dateForm).format(datt);
  }
  if (daysAgo == 'Yesterday') {
    timeAgo = DateFormat(timeForm).format(datt);
  } else {
    timeAgo = convertToAgo(datt);
  }
  if (needAgo) {
    return "$daysAgo • $timeAgo";
  } else {
    return daysAgo;
  }
}

String convertToAgo(DateTime dateTime) {
  DateTime input = dateTime;
  // log(dateTime.toString());
  Duration diff = DateTime.now().difference(input);

  if (diff.inDays >= 1) {
    return '${diff.inDays} day${diff.inDays == 1 ? '' : 's'} ago';
  } else if (diff.inHours >= 1) {
    return '${diff.inHours} hour${diff.inHours == 1 ? '' : 's'} ago';
  } else if (diff.inMinutes >= 1) {
    return '${diff.inMinutes} minute${diff.inMinutes == 1 ? '' : 's'} ago';
  } else if (diff.inSeconds >= 1) {
    return '${diff.inSeconds} second${diff.inSeconds == 1 ? '' : 's'} ago';
  } else {
    return 'just now';
  }
}

String convertToAgoShhort(DateTime dateTime) {
  DateTime input = dateTime;
  Duration diff = DateTime.now().difference(input);

  if (diff.inDays >= 1) {
    // if (diff.inDays < 7) {
    //   return DateFormat.E().format(dateTime);
    // } else {
    return '${diff.inDays}d ago';
    // }
  } else if (diff.inHours >= 1) {
    return '${diff.inHours}h ago';
  } else if (diff.inMinutes >= 1) {
    return '${diff.inMinutes}m ago';
  } else if (diff.inSeconds >= 1) {
    return '${diff.inSeconds}s ago';
  } else {
    return 'just now';
  }
}

String formatDate(DateTime datt) {
  return DateFormat(dateForm).format(datt);
}

String formatDateStan(DateTime datt) {
  return DateFormat.yMMMd().format(datt);
}

String formatTime(DateTime datt) {
  return DateFormat(timeForm).format(datt);
}
