#  Multi Sensory Enhancement Program



## Table of Contents

- Project Title : [Multi Sensory Enhancement Program](#multi-sensory-enhancement-program)
  - [Table of Contents](#table-of-contents)
  - [About our Project](#about-our-project)
  - [Getting Started](#getting-started)
  - [Introduction to Application features \& code](#introduction-to-application-features--code)
  - [Simulating Applications](#simulating-applications)
  - [Potential for project Advancement \& Direction](#potential-for-project-advancement--direction)


<br>

## About our Project

<h3>App Title<br></h3>

- CREAMO ADDI BLOCK

<h3>Development Period<br></h3>

- Start : 2024. 01. 01
- End : 2024. 02. 29

<h3>App Target User<br></h3>

- Therapists & Children with Developmental Disabilities

<h3>App Description<br></h3>

- An app that facilitates sensory integration therapy by digitizing analog materials

<h3>Used Elements</h3>

- Used Language : `Dart`
- Used Framework : `Flutter`
- Used IDE : `Andriod Studio` & `Visual Studio Code`

<h3>Contributed Members</h3>

- [Kim Seoin](https://github.com/seoin0110)
- [Yunna Joo](https://github.com/YunNa000)
- [A Lim Han](https://github.com/alimhanhan)

<br>

## Getting Started

Versions of elements used in development :

- `Flutter` : 3.16.5
- `Dart` : 3.2.3
- `Visual Studio Code` : <br>
  - Version : 1.86.2 (user setup)<br>
  - Electron : 27.2.3<br>
  - Node.js : 18.17.1<br>
  - OS : Windows_NT x64 10.0.22631<br>
- `Andriod Studio` :  Giraffe | 2022.3.1 Patch 3
  - VM : OpenJDK 64-Bit Server VM by JetBrains s.r.o.
  - OS : Windows 11 10.0
  - GC : G1 Young Generation, G1 Old Generation
  - Non-Bundled Plugins : Dart (223.8977) & io.flutter (77.1.1)


For help getting started with Flutter development, view the
[Dart Lecture](https://www.youtube.com/watch?v=usE9IKaogDU&list=PLfLgtT94nNq1izG4R2WDN517iPX4WXH3C/), or [Dart Official](https://dart.dev/) which offers tutorials.

<br>

## Introduction to Application features & code

<h3>Application Features</h3>

  1. Lesson Plan Display Features
  2. Category & Leve; Selection Features
  3. Ability to zoom in and out of images
  4. Page Rendering Features
  5. Content Sliding Features
  6. Ability to provide hints by level
  7. Data Search Functionality
  8. Home Screen Direct Switching
  9. App User Guide Feature
  10. Theme & Level Switching

<br>

<h3>Introduction about File Structure + Codes :</h3>

```
MULTISENSORYENHANCEMENTPROGRAM
│
├── .github
│
├── fonts
│
├── android
│
├── images
│
├── lib
│
├── linux
│
├── web
│
├── windows
│
├── pubspec.yaml
│
├── analysis_options.yaml
│
└── README.md

```

<h3>Introduction about File Structure : lib</h3>

```
📦lib
 ┣ 📂app
 ┃ ┗ 📂view
 ┃ ┃ ┣ 📂common
 ┃ ┃ ┃ ┣ 📂child
 ┃ ┃ ┃ ┃ ┣ 📜crm_carousel_slider.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_main_content.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_child_profile_button.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_info.dart
 ┃ ┃ ┃ ┃ ┗ 📜crm_img_slide.dart
 ┃ ┃ ┃ ┗ 📂system
 ┃ ┃ ┃ ┃ ┣ 📜crm_text.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_text_button.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_bottom_navigation_bar.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_guide.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_app_bar.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_level_button.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_text_field.dart
 ┃ ┃ ┃ ┃ ┗ 📜crm_img_button.dart
 ┃ ┃ ┣ 📂theme
 ┃ ┃ ┃ ┣ 📜app_fontweight.dart
 ┃ ┃ ┃ ┣ 📜app_theme.dart
 ┃ ┃ ┃ ┣ 📜app_string.dart
 ┃ ┃ ┃ ┣ 📜app_text_theme.dart~
 ┃ ┃ ┃ ┣ 📜app_text_theme.dart
 ┃ ┃ ┃ ┣ 📜app_colors.dart
 ┃ ┃ ┃ ┗ 📜app_values.dart
 ┃ ┃ ┣ 📂child
 ┃ ┃ ┃ ┗ 📜contents_page.dart
 ┃ ┃ ┗ 📂main_page
 ┃ ┃ ┃ ┣ 📜category_page.dart
 ┃ ┃ ┃ ┣ 📜category_search_page.dart
 ┃ ┃ ┃ ┗ 📜main_page.dart
 ┗ 📜main.dart
```

<h3>Introduction about File Structure : fonts</h3>

```
?fonts
 ┣ ?CookieRun_Bold.ttf
 ┗ ?Maplestory_Light.ttf
```

<h3>Introduction about File Structure : Images</h3>

```
?images
 ┣ ?01
 ┃ ┣ ?process
 ┃ ┃ ┣ ?1.png
 ┃ ┃ ┣ ?2.png
 ┃ ┃ ┗ ?3.png
 ┃ ┗ ?answer.png
 ┣ ?pictograms
 ┃ ┣ ?Picto_home.png
 ┃ ┣ ?Picto_집만들기.png
 ┃ ┣ ?Picto_공룡만들기.png
 ┃ ┣ ?Picto_기차만들기.png
 ┃ ┣ ?Picto_악기만들기.png
 ┃ ┣ ?Picto_가전제품만들기.png
 ┃ ┣ ?Picto_dinosaur.png
 ┃ ┣ ?Picto_instrument.png
 ┃ ┣ ?Picto_HomeAppliance.png
 ┃ ┣ ?Picto_train.png
 ┃ ┣ ?Picto_곤충만들기.png
 ┃ ┗ ?Picto_Bug.png
 ┣ ?가전제품만들기
 ┃ ┣ ?가전제품만들기_Lv.1
 ┃ ┃ ┣ ?가전제품만들기_Lv.1_1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.1_2.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.1_3.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.1_4.png
 ┃ ┃ ┗ ?가전제품만들기_Lv.1_완성.png
 ┃ ┣ ?가전제품만들기_Lv.2
 ┃ ┃ ┣ ?가전제품만들기_Lv.2_1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2_2.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2_3.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2_4.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2_5.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2_완성.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2_5-1.png
 ┃ ┃ ┗ ?가전제품만들기_Lv.2_5-2.png
 ┃ ┣ ?가전제품만들기_Lv.3
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_2.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_3.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_4.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_5.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_6.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_완성.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_2-1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_3-1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3_5-1.png
 ┃ ┃ ┗ ?가전제품만들기_Lv.3_5-2.png
 ┃ ┣ ?가전제품만들기_Lv.1+
 ┃ ┃ ┣ ?가전제품만들기_Lv.1+_1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.1+_2.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.1+_3.png
 ┃ ┃ ┗ ?가전제품만들기_Lv.1+_완성.png
 ┃ ┣ ?가전제품만들기_Lv.2+
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_2.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_3.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_4.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_5.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_6.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_7.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_8.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_9.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_10.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_완성.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_1-1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_2-1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_2-2.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_5-1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.2+_5-2.png
 ┃ ┃ ┗ ?가전제품만들기_Lv.2+_8-1.png
 ┃ ┗ ?가전제품만들기_Lv.3+
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_1.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_2.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_3.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_4.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_5.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_6.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_7.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_8.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_9.png
 ┃ ┃ ┣ ?가전제품만들기_Lv.3+_완성.png
 ┃ ┃ ┗ ?가전제품만들기_Lv.3+_7-1.png
 ┣ ?공룡만들기
 ┃ ┣ ?공룡만들기_Lv.1
 ┃ ┃ ┣ ?공룡만들기_Lv.1_1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.1_2.png
 ┃ ┃ ┣ ?공룡만들기_Lv.1_3.png
 ┃ ┃ ┣ ?공룡만들기_Lv.1_4.png
 ┃ ┃ ┗ ?공룡만들기_Lv.1_완성.png
 ┃ ┣ ?공룡만들기_Lv.2
 ┃ ┃ ┣ ?공룡만들기_Lv.2_1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2_2.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2_3.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2_4.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2_5.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2_6.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2_7.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2_완성.png
 ┃ ┃ ┗ ?공룡만들기_Lv.2_7-1.png
 ┃ ┣ ?공룡만들기_Lv.3
 ┃ ┃ ┣ ?공룡만들기_Lv.3_1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_2.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_3.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_4.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_5.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_6.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_7.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_8.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_9.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_10.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_11.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_12.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_완성.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_7-1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_7-2.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_7-3.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3_8-1.png
 ┃ ┃ ┗ ?공룡만들기_Lv.3_9-1.png
 ┃ ┣ ?공룡만들기_Lv.1+
 ┃ ┃ ┣ ?공룡만들기_Lv.1+_1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.1+_2.png
 ┃ ┃ ┣ ?공룡만들기_Lv.1+_3.png
 ┃ ┃ ┣ ?공룡만들기_Lv.1+_4.png
 ┃ ┃ ┣ ?공룡만들기_Lv.1+_5.png
 ┃ ┃ ┗ ?공룡만들기_Lv.1+_완성.png
 ┃ ┣ ?공룡만들기_Lv.2+
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_2.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_3.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_4.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_5.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_6.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_7.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_8.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_9.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_10.png
 ┃ ┃ ┣ ?공룡만들기_Lv.2+_11.png
 ┃ ┃ ┗ ?공룡만들기_Lv.2+_완성.png
 ┃ ┗ ?공룡만들기_Lv.3+
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_2.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_3.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_4.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_5.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_6.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_7.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_8.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_9.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_10.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_11.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_완성.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_4-1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_8-1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_11-1.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_11-2.png
 ┃ ┃ ┣ ?공룡만들기_Lv.3+_11-3.png
 ┃ ┃ ┗ ?공룡만들기_Lv.3+_11-4.png
 ┣ ?악기만들기
 ┃ ┣ ?악기만들기_Lv.1
 ┃ ┃ ┣ ?악기만들기_Lv.1_1.png
 ┃ ┃ ┣ ?악기만들기_Lv.1_2.png
 ┃ ┃ ┣ ?악기만들기_Lv.1_3.png
 ┃ ┃ ┣ ?악기만들기_Lv.1_4.png
 ┃ ┃ ┗ ?악기만들기_Lv.1_완성.png
 ┃ ┣ ?악기만들기_Lv.2
 ┃ ┃ ┣ ?악기만들기_Lv.2_1.png
 ┃ ┃ ┣ ?악기만들기_Lv.2_2.png
 ┃ ┃ ┣ ?악기만들기_Lv.2_3.png
 ┃ ┃ ┣ ?악기만들기_Lv.2_4.png
 ┃ ┃ ┣ ?악기만들기_Lv.2_5.png
 ┃ ┃ ┣ ?악기만들기_Lv.2_6.png
 ┃ ┃ ┗ ?악기만들기_Lv.2_완성.png
 ┃ ┣ ?악기만들기_Lv.3
 ┃ ┃ ┣ ?악기만들기_Lv.3_1.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_2.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_3.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_4.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_5.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_6.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_7.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_8.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_9.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_10.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_완성.png
 ┃ ┃ ┣ ?악기만들기_Lv.3_6-1.png
 ┃ ┃ ┗ ?악기만들기_Lv.3_6-2.png
 ┃ ┣ ?악기만들기_Lv.1+
 ┃ ┃ ┣ ?악기만들기_Lv.1+_1.png
 ┃ ┃ ┣ ?악기만들기_Lv.1+_2.png
 ┃ ┃ ┣ ?악기만들기_Lv.1+_3.png
 ┃ ┃ ┣ ?악기만들기_Lv.1+_4.png
 ┃ ┃ ┣ ?악기만들기_Lv.1+_5.png
 ┃ ┃ ┣ ?악기만들기_Lv.1+_6.png
 ┃ ┃ ┗ ?악기만들기_Lv.1+_완성.png
 ┃ ┣ ?악기만들기_Lv.2+
 ┃ ┃ ┣ ?악기만들기_Lv.2+_1.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_2.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_3.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_4.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_5.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_6.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_7.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_완성.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_6-1.png
 ┃ ┃ ┣ ?악기만들기_Lv.2+_6-2.png
 ┃ ┃ ┗ ?악기만들기_Lv.2+_7-1.png
 ┃ ┗ ?악기만들기_Lv.3+
 ┃ ┃ ┣ ?악기만들기_Lv.3+_1.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_2.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_3.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_4.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_5.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_6.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_7.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_8.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_9.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_10.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_11.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_12.png
 ┃ ┃ ┣ ?악기만들기_Lv.3+_완성.png
 ┃ ┃ ┗ ?악기만들기_Lv.3+_4-1.png
 ┣ ?집만들기
 ┃ ┣ ?집만들기_Lv.1
 ┃ ┃ ┣ ?집만들기_Lv.1_1.png
 ┃ ┃ ┣ ?집만들기_Lv.1_2.png
 ┃ ┃ ┗ ?집만들기_Lv.1_완성.png
 ┃ ┣ ?집만들기_Lv.2
 ┃ ┃ ┣ ?집만들기_Lv.2_1.png
 ┃ ┃ ┣ ?집만들기_Lv.2_2.png
 ┃ ┃ ┣ ?집만들기_Lv.2_3.png
 ┃ ┃ ┣ ?집만들기_Lv.2_4.png
 ┃ ┃ ┣ ?집만들기_Lv.2_5.png
 ┃ ┃ ┣ ?집만들기_Lv.2_6.png
 ┃ ┃ ┣ ?집만들기_Lv.2_완성.png
 ┃ ┃ ┗ ?집만들기_Lv.2_6-1.png
 ┃ ┣ ?집만들기_Lv.3
 ┃ ┃ ┣ ?집만들기_Lv.3_1.png
 ┃ ┃ ┣ ?집만들기_Lv.3_2.png
 ┃ ┃ ┣ ?집만들기_Lv.3_3.png
 ┃ ┃ ┣ ?집만들기_Lv.3_4.png
 ┃ ┃ ┣ ?집만들기_Lv.3_5.png
 ┃ ┃ ┣ ?집만들기_Lv.3_6.png
 ┃ ┃ ┣ ?집만들기_Lv.3_7.png
 ┃ ┃ ┣ ?집만들기_Lv.3_완성.png
 ┃ ┃ ┣ ?집만들기_Lv.3_2-1.png
 ┃ ┃ ┣ ?집만들기_Lv.3_6-1.png
 ┃ ┃ ┗ ?집만들기_Lv.3_6-2.png
 ┃ ┣ ?집만들기_Lv.1+
 ┃ ┃ ┣ ?집만들기_Lv.1+_1.png
 ┃ ┃ ┣ ?집만들기_Lv.1+_2.png
 ┃ ┃ ┣ ?집만들기_Lv.1+_3.png
 ┃ ┃ ┣ ?집만들기_Lv.1+_4.png
 ┃ ┃ ┣ ?집만들기_Lv.1+_5.png
 ┃ ┃ ┗ ?집만들기_Lv.1+_완성.png
 ┃ ┣ ?집만들기_Lv.2+
 ┃ ┃ ┣ ?집만들기_Lv.2+_1.png
 ┃ ┃ ┣ ?집만들기_Lv.2+_2.png
 ┃ ┃ ┣ ?집만들기_Lv.2+_3.png
 ┃ ┃ ┣ ?집만들기_Lv.2+_4.png
 ┃ ┃ ┣ ?집만들기_Lv.2+_5.png
 ┃ ┃ ┣ ?집만들기_Lv.2+_6.png
 ┃ ┃ ┣ ?집만들기_Lv.2+_7.png
 ┃ ┃ ┣ ?집만들기_Lv.2+_완성.png
 ┃ ┃ ┣ ?집만들기_Lv.2+_2-2.png
 ┃ ┃ ┗ ?집만들기_Lv.2+_4-2.png
 ┃ ┗ ?집만들기_Lv.3+
 ┃ ┃ ┣ ?집만들기_Lv.3+_1.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_2.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_3.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_4.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_5.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_6.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_7.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_8.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_9.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_10.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_완성.png
 ┃ ┃ ┣ ?집만들기_Lv.3+_7-1.png
 ┃ ┃ ┗ ?집만들기_Lv.3+_10-1.png
 ┣ ?Button_Level
 ┃ ┣ ?Button_Level 1+.png
 ┃ ┣ ?Button_Level 2.png
 ┃ ┣ ?Button_Level 2+.png
 ┃ ┣ ?Button_Level 3.png
 ┃ ┣ ?Button_Level 3+.png
 ┃ ┗ ?Button_Level 1.png
 ┣ ?button
 ┃ ┣ ?button_Level 2.png
 ┃ ┣ ?button_Level 3.png
 ┃ ┣ ?button_Level 5.png
 ┃ ┣ ?button_Level 4.png
 ┃ ┣ ?button_Level 1.png
 ┃ ┗ ?button_Level 6.png
 ┣ ?creamo_logo.png
 ┣ ?background.png
 ┣ ?Button_Question.png
 ┗ ?Title_CREAMOADDIBLOCK.png
```

+ Packages & files that are automatically installed when you set up your environment are not described in detail.

<br>

## Simulating Applications

<h3>Application Features</h3>

  1. Lesson Plan Display Features
  2. Category & Leve; Selection Features
  3. Ability to zoom in and out of images
  4. Page Rendering Features
  5. Content Sliding Features
  6. Ability to provide hints by level
  7. Data Search Functionality
  8. Home Screen Direct Switching
  9. App User Guide Feature
  10. Theme & Level Switching

<br>video here!!
<br><br>

## Potential for project Advancement & Direction

The application faces the following future development challenges.

- Build Server for Application
- Arrange for database and server maintenance
- Build a database management system
- Reflect DataBase to Application
- Proceed to develop a new app with a server
