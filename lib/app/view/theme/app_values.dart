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
    // "category": ["기차만들기", "집만들기", "악기만들기", "가전제품만들기", "공룡만들기", "곤충만들기"],
    // "categoryTitle": ["기차 만들기", "집 만들기", "악기 만들기", "가전제품 만들기", "공룡 만들기", "곤충 만들기"],
    "category": ["집만들기", "악기만들기", "가전제품만들기", "공룡만들기"],
    "categoryTitle": ["집 만들기", "악기 만들기", "가전제품 만들기", "공룡 만들기"],
    // "pictograms": ['train', 'home', 'instrument', 'HomeAppliance', 'dinosaur', 'Bug'],
    "pictograms": ['home', 'instrument', 'HomeAppliance', 'dinosaur'],
    "level": ["Lv.1", "Lv.1+", "Lv.2", "Lv.2+", "Lv.3", "Lv.3+"],
    "levelTitle": ["Level 1", "Level 1+", "Level 2", "Level 2+", "Level 3", "Level 3+"],

    "newLevel": ["Lv1", "Lv1+", "Lv2", "Lv2+", "Lv3", "Lv3+"],
    "newCategory": ["집", "악기", "가전제품", "공룡"],
    "집만들기": {
      "Lv.1": {
        "imageNumber": 2,
        "hints": [],
        "name": "집 1"
      },
      "Lv.1+": {
        "imageNumber": 5,
        "hints": [],
        "name": "집 1+"
      },
      "Lv.2": {
        "imageNumber": 6,
        "hints": ["집만들기_Lv.2_6-1.png"],
        "name": "집 2"
      },
      "Lv.2+": {
        "imageNumber": 7,
        "hints": ["집만들기_Lv.2+_2-2.png", "집만들기_Lv.2+_4-2.png"],
        "name": "집 2+"
      },
      "Lv.3": {
        "imageNumber": 7,
        "hints": ["집만들기_Lv.3_2-1.png", "집만들기_Lv.3_6-1.png", "집만들기_Lv.3_6-2.png", "집만들기_Lv.3_5-2.png"],
        "name": "집 3"
      },
      "Lv.3+": {
        "imageNumber": 10,
        "hints": ["집만들기_Lv.3+_7-1.png", "집만들기_Lv.3+_10-1.png"],
        "name": "집 3+"
      }
    },

    "악기만들기": {
      "Lv.1": {
        "imageNumber": 4,
        "hints": [],
        "name": "피리"
      },
      "Lv.1+": {
        "imageNumber": 6,
        "hints": [],
        "name": "핸드벨"
      },
      "Lv.2": {
        "imageNumber": 6,
        "hints": [],
        "name": "나팔"
      },
      "Lv.2+": {
        "imageNumber": 7,
        "hints": ["악기만들기_Lv.2+_6-1.png", "악기만들기_Lv.2+_6-2.png", "악기만들기_Lv.2+_7-1.png"],
        "name": "기타"
      },
      "Lv.3": {
        "imageNumber": 10,
        "hints": ["악기만들기_Lv.3_6-1.png", "악기만들기_Lv.3_6-2.png"],
        "name": "튜바"
      },
      "Lv.3+": {
        "imageNumber": 12,
        "hints": ["악기만들기_Lv.3+_4-1.png"],
        "name": "피아노"
      }
    },

    "가전제품만들기": {
      "Lv.1": {
        "imageNumber": 4,
        "hints": [],
        "name": "TV와 리모컨"
      },
      "Lv.1+": {
        "imageNumber": 3,
        "hints": [],
        "name": "선풍기"
      },
      "Lv.2": {
        "imageNumber": 5,
        "hints": ["가전제품만들기_Lv.2_5-1.png", "가전제품만들기_Lv.2_5-2.png"],
        "name": "청소기"
      },
      "Lv.2+": {
        "imageNumber": 10,
        "hints": ["가전제품만들기_Lv.2+_1-1.png", "가전제품만들기_Lv.2+_2-1.png", "가전제품만들기_Lv.2+_2-2.png", "가전제품만들기_Lv.2+_5-1.png", "가전제품만들기_Lv.2+_5-2.png", "가전제품만들기_Lv.2+_8-1.png"],
        "name": "믹서기"
      },
      "Lv.3": {
        "imageNumber": 6,
        "hints": ["가전제품만들기_Lv.3_2-1.png", "가전제품만들기_Lv.3_3-1.png", "가전제품만들기_Lv.3_5-1.png", "가전제품만들기_Lv.3_5-2.png"],
        "name": "헤어 드라이어"
      },
      "Lv.3+": {
        "imageNumber": 9,
        "hints": ["가전제품만들기_Lv.3+_7-1.png"],
        "name": "다리미"
      }
    },

    "공룡만들기": {
      "Lv.1": {
        "imageNumber": 4,
        "hints": [],
        "name": "공룡 알"
      },
      "Lv.1+": {
        "imageNumber": 5,
        "hints": [],
        "name": "아기 공룡"
      },
      "Lv.2": {
        "imageNumber": 7,
        "hints": ["공룡만들기_Lv.2_7-1.png"],
        "name": "브라키오사우루스"
      },
      "Lv.2+": {
        "imageNumber": 11,
        "hints": [],
        "name": "크로노사우루스"
      },
      "Lv.3": {
        "imageNumber": 12,
        "hints": ["공룡만들기_Lv.3_7-1.png", "공룡만들기_Lv.3_7-2.png", "공룡만들기_Lv.3_7-3.png", "공룡만들기_Lv.3_8-1.png","공룡만들기_Lv.3_9-1.png"],
        "name": "트리케라톱스"
      },
      "Lv.3+": {
        "imageNumber": 11,
        "hints": ["공룡만들기_Lv.3+_4-1.png", "공룡만들기_Lv.3+_8-1.png", "공룡만들기_Lv.3+_11-1.png", "공룡만들기_Lv.3+_11-2.png","공룡만들기_Lv.3+_11-3.png", "공룡만들기_Lv.3+_11-4.png"],
        "name": "프테라노톤"
      }
    }
  };
}
