import 'package:flutter/cupertino.dart';
import 'package:netease_api/netease_api.dart';

import '../component/utils/time.dart';
import '../utils/exceptions.dart';
import 'strings.dart';

extension ErrorFormat on BuildContext {
  /// human-readable error message
  String formattedError(dynamic error) {
    if (error is NotLoginException) {
      return strings.errorNotLogin;
    } else if (error is RequestError) {
      return error.message;
    }
    return '$error';
  }
}

extension DurationFormat on Duration {
  String get timeStamp => getTimeStamp(inMilliseconds);
}
