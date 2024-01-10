//앱 내 사용할 값들을 저장하는 공간
abstract class AppValues {
  // static const double screenPadding = 20;
  // static const double margin = 16;
  //
  // static const double buttonRadius = 8;
  // static const double buttonHeight = 50;
  //
  // static const double iconDefaultSize = 24;
  // static const double floatButtonSize = 72;
  // static const double listBottomEmptySpace = 200;
  //
  // static const int loggerLineLength = 120;
  // static const int loggerErrorMethodCount = 8;
  // static const int loggerMethodCount = 2;
  //
  // static const int defaultPageSize = 10;
  // static const int defaultPageNumber = 1;
  // static const int defaultDebounceTimeInMilliSeconds = 1000;
  // static const int defaultThrottleTimeInMilliSeconds = 500;
  static const  Map<String, dynamic> fileData = {
    "category": ["공룡", "기차"],
    "level": ["1", "1.5", "2", "2.5", "3", "3.5"],
    "공룡": {
      "1": {
        "imageNumber": 4,
        "hints": [],
        "name": "티라노사우루스"
      },
      "3": {
        "imageNumber": 12,
        "hints": ["공룡_3-7-1.png", "공룡_3-7-2.png", "공룡_3-8-1.png", "공룡_3-9-1.png"],
        "name": "크리모사우루스"
      }
    }
  };

}
