import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';

extension FormatExtensions on String {
  String formatDateString(String locale) {
    DateTime date = DateFormat("yyyy-MM-dd HH:mm").parse(this);
    String month = DateFormat.MMMM().format(date);
    String day = DateFormat.d().format(date);
    String year = DateFormat.y().format(date);
    String time = DateFormat.Hm().format(date); // Add time formatting

    if (locale == "tr") {
      String trMonth = formatDate(
        date,
        [MM, " ", yyyy],
        locale: const TurkishDateLocale(),
      );
      return "$day $trMonth $time"; // Add time to the output
    } else if (locale == "en") {
      String enMonth = formatDate(
        date,
        [MM, " ", yyyy],
        locale: const EnglishDateLocale(),
      );
      return "$day $enMonth $time"; // Add time to the output
    } else {
      return "$day $month $year $time"; // Add time to the output
    }
  }
}

extension DateFormatExtension on DateTime {
   String apiFormat() {
    return DateFormat('yyyy-MM-dd HH:mm:ss')
        .format(DateTime.parse(toIso8601String()));
  }

  String dateToString(String locale) {
    if (locale == "tr") {
      return formatDate(
        this,
        [dd, " ", MM, " ", yyyy],
        locale: const TurkishDateLocale(),
      );
    } else if (locale == "en") {
      return formatDate(
        this,
        [dd, " ", MM, " ", yyyy],
        locale: const EnglishDateLocale(),
      );
    } else {
      return DateFormat("d MMMM y", locale).format(this);
    }
  }

 
}

extension DateTimeStringExtension on String {
  String formatDateTimeString(String locale) {
    final dateTime = DateTime.parse(this);
    final formatter = DateFormat.yMd(locale).add_jm(); // This will include both date and time
    return formatter.format(dateTime);
  }
}
