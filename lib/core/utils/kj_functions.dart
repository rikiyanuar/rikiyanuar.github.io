import 'package:intl/intl.dart';

class KjFunc {
  /// Menampilkan format Tanggal/Jam sesuai request
  /// dari ISO String
  ///
  /// Params [date, format]
  static String dateFromISOString(String? _date, String _format) {
    if (_date == null) return "";
    final date = DateTime.parse(_date);
    final f = DateFormat(_format);
    return f.format(date);
  }

  /// Menampilkan format Tanggal/Jam sesuai request
  /// dari DateTime
  ///
  /// Params [date, format]
  static String dateFromDateTime(DateTime? _date, String _format) {
    if (_date == null) return "";
    final f = DateFormat(_format);
    return f.format(_date);
  }

  /// Menampilkan format Tanggal/Jam sesuai request
  /// dari Epoch
  ///
  /// Params [date, format]
  static String dateFromEpoch(int? epoch, String _format) {
    if (epoch == null) return "";
    DateTime _date = DateTime.fromMillisecondsSinceEpoch(epoch);
    final f = DateFormat(_format);
    return f.format(_date);
  }
}
