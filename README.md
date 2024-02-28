#  Multi Sensory Enhancement Program



## 🫁 Table of Contents

- **Project Title :** [Multi Sensory Enhancement Program](#multi-sensory-enhancement-program)
  - [Table of Contents](#table-of-contents)
  - [About our Project](#about-our-project)
  - [Getting Started](#getting-started)
  - [Introduction to Application features \& code](#introduction-to-application-features--code)
  - [Simulating Applications](#simulating-applications)
  - [Potential for project Advancement \& Direction](#potential-for-project-advancement--direction)


<br><br> 

## 🫀 About our Project

<h3>➖ App Title<br></h3>

- CREAMO ADDI BLOCK

<h3>➖ Development Period<br></h3>

- Start : 2024. 01. 01
- End : 2024. 02. 29

<h3>➖ App Target User<br></h3>

- Therapists & Children with Developmental Disabilities

<h3>➖ App Description<br></h3>

- An app that facilitates sensory integration therapy by digitizing analog materials

<h3>➖ Used Elements</h3>

- Used Language : `Dart`
- Used Framework : `Flutter`
- Used IDE : `Andriod Studio` & `Visual Studio Code`

<h3>➖ Contributed Members</h3>

- [Kim Seoin](https://github.com/seoin0110)
- [Yunna Joo](https://github.com/YunNa000)
- [A Lim Han](https://github.com/alimhanhan)

<br><br>

## 🧠 Getting Started

**Versions of elements used in development :**

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

<br><br>

**How to Run the App :**

Install the flutter packages first, then execute the command below (Compiled files are not uploaded)
``` bash
flutter pub get
```

You can run it as main.dart below.
``` bash
flutter run lib/main.dart
```

<br><br>

## 👁️ Introduction to Application features & code

<h3>➖ Application Features</h3>

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

<h3>➖ Introduction about File Structure + Codes :</h3>

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

<h3>➖ Introduction about File Structure : lib</h3>

```
📦lib
 ┣ 📂app
 ┃ ┗ 📂view
 ┃ ┃ ┣ 📂common
 ┃ ┃ ┃ ┣ 📂child
 ┃ ┃ ┃ ┃ ┣ 📜crm_carousel_slider.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_main_content.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_child_profile_button.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_img_slide.dart
 ┃ ┃ ┃ ┃ ┗ 📜crm_info.dart
 ┃ ┃ ┃ ┗ 📂system
 ┃ ┃ ┃ ┃ ┣ 📜crm_text.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_text_button.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_bottom_navigation_bar.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_guide.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_app_bar.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_level_button.dart
 ┃ ┃ ┃ ┃ ┣ 📜crm_img_button.dart
 ┃ ┃ ┃ ┃ ┗ 📜crm_text_field.dart
 ┃ ┃ ┣ 📂theme
 ┃ ┃ ┃ ┣ 📜app_fontweight.dart
 ┃ ┃ ┃ ┣ 📜app_theme.dart
 ┃ ┃ ┃ ┣ 📜app_string.dart
 ┃ ┃ ┃ ┣ 📜app_colors.dart
 ┃ ┃ ┃ ┣ 📜app_text_theme.dart
 ┃ ┃ ┃ ┗ 📜app_values.dart
 ┃ ┃ ┣ 📂child
 ┃ ┃ ┃ ┣ 📜contents_page.dart
 ┃ ┃ ┃ ┗ 📜preview_page.dart
 ┃ ┃ ┗ 📂main_page
 ┃ ┃ ┃ ┣ 📜category_page.dart
 ┃ ┃ ┃ ┣ 📜category_search_page.dart
 ┃ ┃ ┃ ┗ 📜main_page.dart
 ┗ 📜main.dart
```

<h3>➖ Introduction about File Structure : fonts</h3>

```
📦fonts
 ┣ 📜CookieRun_Bold.ttf
 ┗ 📜Maplestory_Light.ttf
```

<h3>➖ Introduction about File Structure : Images</h3>

```
📦images
 ┣ 📂Background
 ┃ ┣ 📜background_lv1+.png
 ┃ ┣ 📜background_lv1+_gradation.png
 ┃ ┣ 📜background_lv1.png
 ┃ ┣ 📜background_lv1_gradation.png
 ┃ ┣ 📜background_lv2+.png
 ┃ ┣ 📜background_lv2+_gradation.png
 ┃ ┣ 📜background_lv2.png
 ┃ ┣ 📜background_lv2_gradation.png
 ┃ ┣ 📜background_lv3+.png
 ┃ ┣ 📜background_lv3+_gradation.png
 ┃ ┣ 📜background_lv3.png
 ┃ ┗ 📜background_lv3_gradation.png
 ┣ 📂Block_Image
 ┃ ┣ 📂1. 기차
 ┃ ┃ ┣ 📂lv1
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┗ 📜st4.png
 ┃ ┃ ┣ 📂lv1+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┗ 📜st4.png
 ┃ ┃ ┣ 📂lv2
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st3_h1.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st4_h1.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┗ 📜st6.png
 ┃ ┃ ┣ 📂lv2+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┃ ┣ 📂lv3
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st4_h1.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┃ ┗ 📂lv3+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┣ 📂2. 집
 ┃ ┃ ┣ 📂lv1
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┗ 📜st2.png
 ┃ ┃ ┣ 📂lv1+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┗ 📜st5.png
 ┃ ┃ ┣ 📂lv2
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┗ 📜st6_h1.png
 ┃ ┃ ┣ 📂lv2+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st2_h1.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st4_h1.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┗ 📜st7.png
 ┃ ┃ ┣ 📂lv3
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st2_h1.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st6_h1.png
 ┃ ┃ ┃ ┣ 📜st6_h2.png
 ┃ ┃ ┃ ┗ 📜st7.png
 ┃ ┃ ┗ 📂lv3+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st10_h1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st7_h1.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┣ 📂3. 악기
 ┃ ┃ ┣ 📂lv1
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┗ 📜st4.png
 ┃ ┃ ┣ 📂lv1+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┗ 📜st6.png
 ┃ ┃ ┣ 📂lv2
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┗ 📜st6.png
 ┃ ┃ ┣ 📂lv2+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st6_h1.png
 ┃ ┃ ┃ ┣ 📜st6_h2.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┗ 📜st7_h1.png
 ┃ ┃ ┣ 📂lv3
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st6_h1.png
 ┃ ┃ ┃ ┣ 📜st6_h2.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┃ ┗ 📂lv3+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st12.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st4_h1.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┣ 📂4. 가전제품
 ┃ ┃ ┣ 📂lv1
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┗ 📜st4.png
 ┃ ┃ ┣ 📂lv1+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┗ 📜st3.png
 ┃ ┃ ┣ 📂lv2
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st5_h1.png
 ┃ ┃ ┃ ┗ 📜st5_h2.png
 ┃ ┃ ┣ 📂lv2+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st1_h1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st2_h1.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st5_h1.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┣ 📜st8_h1.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┃ ┣ 📂lv3
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st2_h1.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st3_h1.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st5_h1.png
 ┃ ┃ ┃ ┗ 📜st6.png
 ┃ ┃ ┗ 📂lv3+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st7_h1.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┣ 📂5. 공룡
 ┃ ┃ ┣ 📂lv1
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┗ 📜st4.png
 ┃ ┃ ┣ 📂lv1+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┗ 📜st5.png
 ┃ ┃ ┣ 📂lv2
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┗ 📜st7_h1.png
 ┃ ┃ ┣ 📂lv2+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┃ ┣ 📂lv3
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st12.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st7_h1.png
 ┃ ┃ ┃ ┣ 📜st7_h2.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┣ 📜st8_h1.png
 ┃ ┃ ┃ ┣ 📜st9.png
 ┃ ┃ ┃ ┗ 📜st9_h1.png
 ┃ ┃ ┗ 📂lv3+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st11_h1.png
 ┃ ┃ ┃ ┣ 📜st11_h2.png
 ┃ ┃ ┃ ┣ 📜st11_h3.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st4_h1.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┣ 📜st8_h1.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┣ 📂6. 곤충
 ┃ ┃ ┣ 📂lv1
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┗ 📜st4.png
 ┃ ┃ ┣ 📂lv1+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┗ 📜st5.png
 ┃ ┃ ┣ 📂lv2
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st5_h1.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┗ 📜st7.png
 ┃ ┃ ┣ 📂lv2+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┣ 📜st8_h1.png
 ┃ ┃ ┃ ┣ 📜st9.png
 ┃ ┃ ┃ ┗ 📜st9_h1.png
 ┃ ┃ ┣ 📂lv3
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st12.png
 ┃ ┃ ┃ ┣ 📜st13.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┣ 📜st8_h1.png
 ┃ ┃ ┃ ┣ 📜st9.png
 ┃ ┃ ┃ ┗ 📜st9_h1.png
 ┃ ┃ ┗ 📂lv3+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st12.png
 ┃ ┃ ┃ ┣ 📜st13.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st6_h1.png
 ┃ ┃ ┃ ┣ 📜st6_h2.png
 ┃ ┃ ┃ ┣ 📜st6_h3.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┣ 📜st9.png
 ┃ ┃ ┃ ┗ 📜st9_h1.png
 ┃ ┣ 📂7. 바퀴 달린 자동차
 ┃ ┃ ┣ 📂lv1
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┗ 📜st4.png
 ┃ ┃ ┣ 📂lv1+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st3_h1.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┗ 📜st7.png
 ┃ ┃ ┣ 📂lv2
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st12.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st2_h1.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┣ 📜st9.png
 ┃ ┃ ┃ ┗ 📜st9_h1.png
 ┃ ┃ ┣ 📂lv2+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st11_h1.png
 ┃ ┃ ┃ ┣ 📜st12.png
 ┃ ┃ ┃ ┣ 📜st13.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┃ ┣ 📂lv3
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st12.png
 ┃ ┃ ┃ ┣ 📜st13.png
 ┃ ┃ ┃ ┣ 📜st14.png
 ┃ ┃ ┃ ┣ 📜st15.png
 ┃ ┃ ┃ ┣ 📜st16.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┃ ┗ 📂lv3+
 ┃ ┃ ┃ ┣ 📜complete.png
 ┃ ┃ ┃ ┣ 📜complete_shadow.png
 ┃ ┃ ┃ ┣ 📜st1.png
 ┃ ┃ ┃ ┣ 📜st10.png
 ┃ ┃ ┃ ┣ 📜st11.png
 ┃ ┃ ┃ ┣ 📜st11_h1.png
 ┃ ┃ ┃ ┣ 📜st11_h2.png
 ┃ ┃ ┃ ┣ 📜st12.png
 ┃ ┃ ┃ ┣ 📜st13.png
 ┃ ┃ ┃ ┣ 📜st14.png
 ┃ ┃ ┃ ┣ 📜st15.png
 ┃ ┃ ┃ ┣ 📜st2.png
 ┃ ┃ ┃ ┣ 📜st3.png
 ┃ ┃ ┃ ┣ 📜st3_h1.png
 ┃ ┃ ┃ ┣ 📜st4.png
 ┃ ┃ ┃ ┣ 📜st5.png
 ┃ ┃ ┃ ┣ 📜st6.png
 ┃ ┃ ┃ ┣ 📜st6_h1.png
 ┃ ┃ ┃ ┣ 📜st7.png
 ┃ ┃ ┃ ┣ 📜st7_h1.png
 ┃ ┃ ┃ ┣ 📜st7_h2.png
 ┃ ┃ ┃ ┣ 📜st8.png
 ┃ ┃ ┃ ┗ 📜st9.png
 ┃ ┗ 📜filename process.py
 ┣ 📂Button
 ┃ ┣ 📜button_back.png
 ┃ ┣ 📜button_hint1.png
 ┃ ┣ 📜button_hint2.png
 ┃ ┣ 📜button_hint3.png
 ┃ ┣ 📜button_hint4.png
 ┃ ┣ 📜button_home.png
 ┃ ┣ 📜button_main.png
 ┃ ┣ 📜button_manual.png
 ┃ ┣ 📜button_next.png
 ┃ ┣ 📜button_preview.png
 ┃ ┣ 📜button_retry.png
 ┃ ┗ 📜button_start.png
 ┣ 📂Button_Level
 ┃ ┣ 📜Button_lv1+.png
 ┃ ┣ 📜Button_lv1.png
 ┃ ┣ 📜Button_lv2+.png
 ┃ ┣ 📜Button_lv2.png
 ┃ ┣ 📜Button_lv3+.png
 ┃ ┗ 📜Button_lv3.png
 ┣ 📂CommonUse
 ┃ ┣ 📜common_complete.png
 ┃ ┣ 📜common_star.png
 ┃ ┣ 📜common_stepbox.png
 ┃ ┗ 📜common_title.png
 ┣ 📂pictograms
 ┃ ┣ 📜Picto_Bug.png
 ┃ ┣ 📜Picto_car.png
 ┃ ┣ 📜Picto_dinosaur.png
 ┃ ┣ 📜Picto_home.png
 ┃ ┣ 📜Picto_HomeAppliance.png
 ┃ ┣ 📜Picto_instrument.png
 ┃ ┣ 📜Picto_train.png
 ┃ ┣ 📜Picto_가전제품만들기.png
 ┃ ┣ 📜Picto_곤충만들기.png
 ┃ ┣ 📜Picto_공룡만들기.png
 ┃ ┣ 📜Picto_기차만들기.png
 ┃ ┣ 📜Picto_바퀴달린자동차만들기.png
 ┃ ┣ 📜Picto_악기만들기.png
 ┃ ┗ 📜Picto_집만들기.png
 ┣ 📂Preview_Image
 ┃ ┣ 📜가전제품_lv1+_previewimage.png
 ┃ ┣ 📜가전제품_lv1_previewimage.png
 ┃ ┣ 📜가전제품_lv2+_previewimage.png
 ┃ ┣ 📜가전제품_lv2_previewimage.png
 ┃ ┣ 📜가전제품_lv3+_previewimage.png
 ┃ ┣ 📜가전제품_lv3_previewimage.png
 ┃ ┣ 📜곤충_lv1+_previewimage.png
 ┃ ┣ 📜곤충_lv1_previewimage.png
 ┃ ┣ 📜곤충_lv2+_previewimage.png
 ┃ ┣ 📜곤충_lv2_previewimage.png
 ┃ ┣ 📜곤충_lv3+_previewimage.png
 ┃ ┣ 📜곤충_lv3_previewimage.png
 ┃ ┣ 📜공룡_lv1+_previewimage.png
 ┃ ┣ 📜공룡_lv1_previewimage.png
 ┃ ┣ 📜공룡_lv2+_previewimage.png
 ┃ ┣ 📜공룡_lv2_previewimage.png
 ┃ ┣ 📜공룡_lv3+_previewimage.png
 ┃ ┣ 📜공룡_lv3_previewimage.png
 ┃ ┣ 📜기차_lv1+_previewimage.png
 ┃ ┣ 📜기차_lv1_previewimage.png
 ┃ ┣ 📜기차_lv2+_previewimage.png
 ┃ ┣ 📜기차_lv2_previewimage.png
 ┃ ┣ 📜기차_lv3+_previewimage.png
 ┃ ┣ 📜기차_lv3_previewimage.png
 ┃ ┣ 📜악기_lv1+_previewimage.png
 ┃ ┣ 📜악기_lv1_previewimage.png
 ┃ ┣ 📜악기_lv2+_previewimage.png
 ┃ ┣ 📜악기_lv2_previewimage.png
 ┃ ┣ 📜악기_lv3+_previewimage.png
 ┃ ┣ 📜악기_lv3_previewimage.png
 ┃ ┣ 📜자동차_lv1+_previewimage.png
 ┃ ┣ 📜자동차_lv1_previewimage.png
 ┃ ┣ 📜자동차_lv2+_previewimage.png
 ┃ ┣ 📜자동차_lv2_previewimage.png
 ┃ ┣ 📜자동차_lv3+_previewimage.png
 ┃ ┣ 📜자동차_lv3_previewimage.png
 ┃ ┣ 📜집_lv1+_previewimage.png
 ┃ ┣ 📜집_lv1_previewimage.png
 ┃ ┣ 📜집_lv2+_previewimage.png
 ┃ ┣ 📜집_lv2_previewimage.png
 ┃ ┣ 📜집_lv3+_previewimage.png
 ┃ ┗ 📜집_lv3_previewimage.png
 ┣ 📂Title
 ┃ ┣ 📜title_lv1+.png
 ┃ ┣ 📜title_lv1.png
 ┃ ┣ 📜title_lv2+.png
 ┃ ┣ 📜title_lv2.png
 ┃ ┣ 📜title_lv3+.png
 ┃ ┣ 📜title_lv3.png
 ┃ ┣ 📜가전제품_lv1+_title.png
 ┃ ┣ 📜가전제품_lv1_title.png
 ┃ ┣ 📜가전제품_lv2+_title.png
 ┃ ┣ 📜가전제품_lv2_title.png
 ┃ ┣ 📜가전제품_lv3+_title.png
 ┃ ┣ 📜가전제품_lv3_title.png
 ┃ ┣ 📜곤충_lv1+_title.png
 ┃ ┣ 📜곤충_lv1_title.png
 ┃ ┣ 📜곤충_lv2+_title.png
 ┃ ┣ 📜곤충_lv2_title.png
 ┃ ┣ 📜곤충_lv3+_title.png
 ┃ ┣ 📜곤충_lv3_title.png
 ┃ ┣ 📜공룡_lv1+_title.png
 ┃ ┣ 📜공룡_lv1_title.png
 ┃ ┣ 📜공룡_lv2+_title.png
 ┃ ┣ 📜공룡_lv2_title.png
 ┃ ┣ 📜공룡_lv3+_title.png
 ┃ ┣ 📜공룡_lv3_title.png
 ┃ ┣ 📜기차_lv1+_title.png
 ┃ ┣ 📜기차_lv1_title.png
 ┃ ┣ 📜기차_lv2+_title.png
 ┃ ┣ 📜기차_lv2_title.png
 ┃ ┣ 📜기차_lv3+_title.png
 ┃ ┣ 📜기차_lv3_title.png
 ┃ ┣ 📜바퀴 달린 자동차_lv1+_title.png
 ┃ ┣ 📜바퀴 달린 자동차_lv1_title.png
 ┃ ┣ 📜바퀴 달린 자동차_lv2+_title.png
 ┃ ┣ 📜바퀴 달린 자동차_lv2_title.png
 ┃ ┣ 📜바퀴 달린 자동차_lv3+_title.png
 ┃ ┣ 📜바퀴 달린 자동차_lv3_title.png
 ┃ ┣ 📜악기_lv1+_title.png
 ┃ ┣ 📜악기_lv1_title.png
 ┃ ┣ 📜악기_lv2+_title.png
 ┃ ┣ 📜악기_lv2_title.png
 ┃ ┣ 📜악기_lv3+_title.png
 ┃ ┣ 📜악기_lv3_title.png
 ┃ ┣ 📜집_lv1+_title.png
 ┃ ┣ 📜집_lv1_title.png
 ┃ ┣ 📜집_lv2+_title.png
 ┃ ┣ 📜집_lv2_title.png
 ┃ ┣ 📜집_lv3+_title.png
 ┃ ┗ 📜집_lv3_title.png
 ┣ 📂아이콘
 ┃ ┣ 📜BackButton_Blue.png
 ┃ ┣ 📜BackButton_Orange.png
 ┃ ┣ 📜BackButton_Pink.png
 ┃ ┣ 📜BackButton_Purple.png
 ┃ ┣ 📜Continue.png
 ┃ ┣ 📜PlayButton.png
 ┃ ┣ 📜Pop-CloseButton.png
 ┃ ┣ 📜QuestionButton.png
 ┃ ┣ 📜RefreshButton.png
 ┃ ┣ 📜SaveButton.png
 ┃ ┣ 📜Start.png
 ┃ ┣ 📜StopButton.png
 ┃ ┣ 📜User1_Icon.png
 ┃ ┣ 📜User2_Icon.png
 ┃ ┣ 📜User3_Icon.png
 ┃ ┗ 📜User4_Icon.png
 ┣ 📜Background.png
 ┣ 📜Button_Question.png
 ┣ 📜creamo_logo.png
 ┗ 📜Title_CREAMOADDIBLOCK.png
```

+ Packages & files that are automatically installed when you set up your environment are not described in detail.

<br><br>

## 👄 Simulating Applications

<h3>➖ Application Features</h3>

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

<br><h3>➖ Application Simulation Video</h3>



https://github.com/multi-sensor/MultiSensoryEnhancementProgram/assets/79834222/e2902a14-4db2-425b-b89a-38510bf43767


<br><br>

## 🗣️ Potential for project Advancement & Direction

**The application faces the following future development challenges.**

- Build Server for Application
- Arrange for database and server maintenance
- Build a database management system
- Reflect DataBase to Application
- Proceed to develop a new app with a server
