import 'package:ps01/shared/extension.dart';
import 'package:url_launcher/url_launcher.dart';

class AppHelper {
  AppHelper._();

  static String convertDate(String date) {
    final List<String> fullDate = date.split(' ');
    final String day = fullDate[0].capitalize();
    final List<String> splitCalendar = fullDate[1].split('/');
    final String days = splitCalendar[0];
    final String month = splitCalendar[1];
    //convert 5 to mei
    final List<String> monthList = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];
    final String monthName = monthList[int.parse(month) - 1];
    final String year = splitCalendar[2];

    return '$day, $days $monthName $year';
  }

  static Future<void> launch(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
