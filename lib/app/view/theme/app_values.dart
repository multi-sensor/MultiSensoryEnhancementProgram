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
    "category": ["기차만들기", "집만들기", "악기만들기", "가전제품만들기", "공룡만들기", "곤충만들기"],
    "categoryTitle": ["기차 만들기", "집 만들기", "악기 만들기", "가전제품 만들기", "공룡 만들기", "곤충 만들기"],

    "level1category":["기차 1", "집 1", "피리", "TV와 리모컨", "공룡 알", "번데기"],
    // "level2category":["기차 1", "집 1", "피리", "TV와 리모컨", "공룡 알", "번데기"],
    // "level3category":["기차 1", "집 1", "피리", "TV와 리모컨", "공룡 알", "번데기"],
    // "level4category":["기차 1", "집 1", "피리", "TV와 리모컨", "공룡 알", "번데기"],
    // "level5category":["기차 1", "집 1", "피리", "TV와 리모컨", "공룡 알", "번데기"],
    // "level6category":["기차 1", "집 1", "피리", "TV와 리모컨", "공룡 알", "번데기"],

    "level1": {
    'categories': [
      {'title': '기차 1', 'imagePath': 'path/to/image1.png'},
      {'title': '집 1', 'imagePath': 'path/to/image2.png'},

    ],
    "level2": {



    }
  },

    "pictograms": ['train', 'home', 'instrument', 'HomeAppliance', 'dinosaur', 'train'],
    "level": ["Lv.1", "Lv.1+", "Lv.2", "Lv.2+", "Lv.3", "Lv.3+"],
    "levelTitle": ["Level 1", "Level 1+", "Level 2", "Level 2+", "Level 3", "Level 3+"],



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
    },
    "가전제품만들기": {
      "Lv.1": {
        "imageNumber": 4,
        "hints": [],
        "name": "티라노사우루스"
      },
      "Lv.1+": {
        "imageNumber": 3,
        "hints": [],
        "name": "크리모사우루스"
      },
      "Lv.2": {
        "imageNumber": 5,
        "hints": ["가전제품만들기_Lv.2_5-1.png", "가전제품만들기_Lv.2_5-2.png"],
        "name": "크리모사우루스"
      },
      "Lv.2+": {
        "imageNumber": 10,
        "hints": ["가전제품만들기_Lv.2+_1-1.png", "가전제품만들기_Lv.2+_2-1.png", "가전제품만들기_Lv.2+_2-2.png", "가전제품만들기_Lv.2+_5-1.png", "가전제품만들기_Lv.2+_5-2.png", "가전제품만들기_Lv.2+_8-1.png"],
        "name": "크리모사우루스"
      },
      "Lv.3": {
        "imageNumber": 6,
        "hints": ["가전제품만들기_Lv.3_2-1.png", "가전제품만들기_Lv.3_3-1.png", "가전제품만들기_Lv.3_5-1.png", "가전제품만들기_Lv.3_5-2.png"],
        "name": "크리모사우루스"
      },
      "Lv.3+": {
        "imageNumber": 9,
        "hints": ["가전제품만들기_Lv.3+_7-1.png"],
        "name": "크리모사우루스"
      }
    }
  };

}
