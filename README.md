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
弛
戍式式 .github
弛
戍式式 fonts
弛
戍式式 android
弛
戍式式 images
弛
戍式式 lib
弛
戍式式 linux
弛
戍式式 web
弛
戍式式 windows
弛
戍式式 pubspec.yaml
弛
戍式式 analysis_options.yaml
弛
戌式式 README.md

```

<h3>Introduction about File Structure : lib</h3>

```
lib
 曳 app
 早 曲 view
 早 早 曳 common
 早 早 早 曳 child
 早 早 早 早 曳 crm_carousel_slider.dart
 早 早 早 早 曳 crm_main_content.dart
 早 早 早 早 曳 crm_child_profile_button.dart
 早 早 早 早 曳 crm_info.dart
 早 早 早 早 曲 crm_img_slide.dart
 早 早 早 曲 system
 早 早 早 早 曳 crm_text.dart
 早 早 早 早 曳 crm_text_button.dart
 早 早 早 早 曳 crm_bottom_navigation_bar.dart
 早 早 早 早 曳 crm_guide.dart
 早 早 早 早 曳 crm_app_bar.dart
 早 早 早 早 曳 crm_level_button.dart
 早 早 早 早 曳 crm_text_field.dart
 早 早 早 早 曲 crm_img_button.dart
 早 早 曳 theme
 早 早 早 曳 app_fontweight.dart
 早 早 早 曳 app_theme.dart
 早 早 早 曳 app_string.dart
 早 早 早 曳 app_text_theme.dart~
 早 早 早 曳 app_text_theme.dart
 早 早 早 曳 app_colors.dart
 早 早 早 曲 app_values.dart
 早 早 曳 child
 早 早 早 曲 contents_page.dart
 早 早 曲 main_page
 早 早 早 曳 category_page.dart
 早 早 早 曳 category_search_page.dart
 早 早 早 曲 main_page.dart
 曲 main.dart
```

<h3>Introduction about File Structure : fonts</h3>

```
fonts
 曳 CookieRun_Bold.ttf
 曲 Maplestory_Light.ttf
```

<h3>Introduction about File Structure : Images</h3>

```
images
 曳 Background
 早 曳 background_lv1+.png
 早 曳 background_lv1+_gradation.png
 早 曳 background_lv1.png
 早 曳 background_lv1_gradation.png
 早 曳 background_lv2+.png
 早 曳 background_lv2+_gradation.png
 早 曳 background_lv2.png
 早 曳 background_lv2_gradation.png
 早 曳 background_lv3+.png
 早 曳 background_lv3+_gradation.png
 早 曳 background_lv3.png
 早 曲 background_lv3_gradation.png
 曳 Block_Image
 早 曳 1. 晦離
 早 早 曳 lv1
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曲 st4.png
 早 早 曳 lv1+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曲 st4.png
 早 早 曳 lv2
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st3_h1.png
 早 早 早 曳 st4.png
 早 早 早 曳 st4_h1.png
 早 早 早 曳 st5.png
 早 早 早 曲 st6.png
 早 早 曳 lv2+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 早 曳 lv3
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st4_h1.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 早 曲 lv3+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 曳 2. 餵
 早 早 曳 lv1
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曲 st2.png
 早 早 曳 lv1+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曲 st5.png
 早 早 曳 lv2
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曲 st6_h1.png
 早 早 曳 lv2+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st2_h1.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st4_h1.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曲 st7.png
 早 早 曳 lv3
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st2_h1.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st6_h1.png
 早 早 早 曳 st6_h2.png
 早 早 早 曲 st7.png
 早 早 曲 lv3+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st10_h1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st7_h1.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 曳 3. 學晦
 早 早 曳 lv1
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曲 st4.png
 早 早 曳 lv1+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曲 st6.png
 早 早 曳 lv2
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曲 st6.png
 早 早 曳 lv2+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st6_h1.png
 早 早 早 曳 st6_h2.png
 早 早 早 曳 st7.png
 早 早 早 曲 st7_h1.png
 早 早 曳 lv3
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st6_h1.png
 早 早 早 曳 st6_h2.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 早 曲 lv3+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st12.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st4_h1.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 曳 4. 陛瞪薯ヶ
 早 早 曳 lv1
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曲 st4.png
 早 早 曳 lv1+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曲 st3.png
 早 早 曳 lv2
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st5_h1.png
 早 早 早 曲 st5_h2.png
 早 早 曳 lv2+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st1_h1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st2_h1.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st5_h1.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曳 st8_h1.png
 早 早 早 曲 st9.png
 早 早 曳 lv3
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st2_h1.png
 早 早 早 曳 st3.png
 早 早 早 曳 st3_h1.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st5_h1.png
 早 早 早 曲 st6.png
 早 早 曲 lv3+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st7_h1.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 曳 5. 奢瑟
 早 早 曳 lv1
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曲 st4.png
 早 早 曳 lv1+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曲 st5.png
 早 早 曳 lv2
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曲 st7_h1.png
 早 早 曳 lv2+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 早 曳 lv3
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st12.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st7_h1.png
 早 早 早 曳 st7_h2.png
 早 早 早 曳 st8.png
 早 早 早 曳 st8_h1.png
 早 早 早 曳 st9.png
 早 早 早 曲 st9_h1.png
 早 早 曲 lv3+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st11_h1.png
 早 早 早 曳 st11_h2.png
 早 早 早 曳 st11_h3.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st4_h1.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曳 st8_h1.png
 早 早 早 曲 st9.png
 早 曳 6. 堆醱
 早 早 曳 lv1
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曲 st4.png
 早 早 曳 lv1+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曲 st5.png
 早 早 曳 lv2
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st5_h1.png
 早 早 早 曳 st6.png
 早 早 早 曲 st7.png
 早 早 曳 lv2+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曳 st8_h1.png
 早 早 早 曳 st9.png
 早 早 早 曲 st9_h1.png
 早 早 曳 lv3
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st12.png
 早 早 早 曳 st13.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曳 st8_h1.png
 早 早 早 曳 st9.png
 早 早 早 曲 st9_h1.png
 早 早 曲 lv3+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st12.png
 早 早 早 曳 st13.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st6_h1.png
 早 早 早 曳 st6_h2.png
 早 早 早 曳 st6_h3.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曳 st9.png
 早 早 早 曲 st9_h1.png
 早 曳 7. 夥襪 殖萼 濠翕離
 早 早 曳 lv1
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曲 st4.png
 早 早 曳 lv1+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st3_h1.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曲 st7.png
 早 早 曳 lv2
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st12.png
 早 早 早 曳 st2.png
 早 早 早 曳 st2_h1.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曳 st9.png
 早 早 早 曲 st9_h1.png
 早 早 曳 lv2+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st11_h1.png
 早 早 早 曳 st12.png
 早 早 早 曳 st13.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 早 曳 lv3
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st12.png
 早 早 早 曳 st13.png
 早 早 早 曳 st14.png
 早 早 早 曳 st15.png
 早 早 早 曳 st16.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st7.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 早 曲 lv3+
 早 早 早 曳 complete.png
 早 早 早 曳 complete_shadow.png
 早 早 早 曳 st1.png
 早 早 早 曳 st10.png
 早 早 早 曳 st11.png
 早 早 早 曳 st11_h1.png
 早 早 早 曳 st11_h2.png
 早 早 早 曳 st12.png
 早 早 早 曳 st13.png
 早 早 早 曳 st14.png
 早 早 早 曳 st15.png
 早 早 早 曳 st2.png
 早 早 早 曳 st3.png
 早 早 早 曳 st3_h1.png
 早 早 早 曳 st4.png
 早 早 早 曳 st5.png
 早 早 早 曳 st6.png
 早 早 早 曳 st6_h1.png
 早 早 早 曳 st7.png
 早 早 早 曳 st7_h1.png
 早 早 早 曳 st7_h2.png
 早 早 早 曳 st8.png
 早 早 早 曲 st9.png
 早 曲 filename process.py
 曳 Button
 早 曳 button_back.png
 早 曳 button_hint1.png
 早 曳 button_hint2.png
 早 曳 button_hint3.png
 早 曳 button_hint4.png
 早 曳 button_home.png
 早 曳 button_main.png
 早 曳 button_manual.png
 早 曳 button_next.png
 早 曳 button_preview.png
 早 曳 button_retry.png
 早 曲 button_start.png
 曳 Button_Level
 早 曳 Button_lv1+.png
 早 曳 Button_lv1.png
 早 曳 Button_lv2+.png
 早 曳 Button_lv2.png
 早 曳 Button_lv3+.png
 早 曲 Button_lv3.png
 曳 CommonUse
 早 曳 common_complete.png
 早 曳 common_star.png
 早 曳 common_stepbox.png
 早 曲 common_title.png
 曳 pictograms
 早 曳 Picto_Bug.png
 早 曳 Picto_car.png
 早 曳 Picto_dinosaur.png
 早 曳 Picto_home.png
 早 曳 Picto_HomeAppliance.png
 早 曳 Picto_instrument.png
 早 曳 Picto_train.png
 早 曳 Picto_陛瞪薯ヶ虜菟晦.png
 早 曳 Picto_堆醱虜菟晦.png
 早 曳 Picto_奢瑟虜菟晦.png
 早 曳 Picto_晦離虜菟晦.png
 早 曳 Picto_夥襪殖萼濠翕離虜菟晦.png
 早 曳 Picto_學晦虜菟晦.png
 早 曲 Picto_餵虜菟晦.png
 曳 Preview_Image
 早 曳 陛瞪薯ヶ_lv1+_previewimage.png
 早 曳 陛瞪薯ヶ_lv1_previewimage.png
 早 曳 陛瞪薯ヶ_lv2+_previewimage.png
 早 曳 陛瞪薯ヶ_lv2_previewimage.png
 早 曳 陛瞪薯ヶ_lv3+_previewimage.png
 早 曳 陛瞪薯ヶ_lv3_previewimage.png
 早 曳 堆醱_lv1+_previewimage.png
 早 曳 堆醱_lv1_previewimage.png
 早 曳 堆醱_lv2+_previewimage.png
 早 曳 堆醱_lv2_previewimage.png
 早 曳 堆醱_lv3+_previewimage.png
 早 曳 堆醱_lv3_previewimage.png
 早 曳 奢瑟_lv1+_previewimage.png
 早 曳 奢瑟_lv1_previewimage.png
 早 曳 奢瑟_lv2+_previewimage.png
 早 曳 奢瑟_lv2_previewimage.png
 早 曳 奢瑟_lv3+_previewimage.png
 早 曳 奢瑟_lv3_previewimage.png
 早 曳 晦離_lv1+_previewimage.png
 早 曳 晦離_lv1_previewimage.png
 早 曳 晦離_lv2+_previewimage.png
 早 曳 晦離_lv2_previewimage.png
 早 曳 晦離_lv3+_previewimage.png
 早 曳 晦離_lv3_previewimage.png
 早 曳 學晦_lv1+_previewimage.png
 早 曳 學晦_lv1_previewimage.png
 早 曳 學晦_lv2+_previewimage.png
 早 曳 學晦_lv2_previewimage.png
 早 曳 學晦_lv3+_previewimage.png
 早 曳 學晦_lv3_previewimage.png
 早 曳 濠翕離_lv1+_previewimage.png
 早 曳 濠翕離_lv1_previewimage.png
 早 曳 濠翕離_lv2+_previewimage.png
 早 曳 濠翕離_lv2_previewimage.png
 早 曳 濠翕離_lv3+_previewimage.png
 早 曳 濠翕離_lv3_previewimage.png
 早 曳 餵_lv1+_previewimage.png
 早 曳 餵_lv1_previewimage.png
 早 曳 餵_lv2+_previewimage.png
 早 曳 餵_lv2_previewimage.png
 早 曳 餵_lv3+_previewimage.png
 早 曲 餵_lv3_previewimage.png
 曳 Title
 早 曳 title_lv1+.png
 早 曳 title_lv1.png
 早 曳 title_lv2+.png
 早 曳 title_lv2.png
 早 曳 title_lv3+.png
 早 曳 title_lv3.png
 早 曳 陛瞪薯ヶ_lv1+_title.png
 早 曳 陛瞪薯ヶ_lv1_title.png
 早 曳 陛瞪薯ヶ_lv2+_title.png
 早 曳 陛瞪薯ヶ_lv2_title.png
 早 曳 陛瞪薯ヶ_lv3+_title.png
 早 曳 陛瞪薯ヶ_lv3_title.png
 早 曳 堆醱_lv1+_title.png
 早 曳 堆醱_lv1_title.png
 早 曳 堆醱_lv2+_title.png
 早 曳 堆醱_lv2_title.png
 早 曳 堆醱_lv3+_title.png
 早 曳 堆醱_lv3_title.png
 早 曳 奢瑟_lv1+_title.png
 早 曳 奢瑟_lv1_title.png
 早 曳 奢瑟_lv2+_title.png
 早 曳 奢瑟_lv2_title.png
 早 曳 奢瑟_lv3+_title.png
 早 曳 奢瑟_lv3_title.png
 早 曳 晦離_lv1+_title.png
 早 曳 晦離_lv1_title.png
 早 曳 晦離_lv2+_title.png
 早 曳 晦離_lv2_title.png
 早 曳 晦離_lv3+_title.png
 早 曳 晦離_lv3_title.png
 早 曳 夥襪 殖萼 濠翕離_lv1+_title.png
 早 曳 夥襪 殖萼 濠翕離_lv1_title.png
 早 曳 夥襪 殖萼 濠翕離_lv2+_title.png
 早 曳 夥襪 殖萼 濠翕離_lv2_title.png
 早 曳 夥襪 殖萼 濠翕離_lv3+_title.png
 早 曳 夥襪 殖萼 濠翕離_lv3_title.png
 早 曳 學晦_lv1+_title.png
 早 曳 學晦_lv1_title.png
 早 曳 學晦_lv2+_title.png
 早 曳 學晦_lv2_title.png
 早 曳 學晦_lv3+_title.png
 早 曳 學晦_lv3_title.png
 早 曳 餵_lv1+_title.png
 早 曳 餵_lv1_title.png
 早 曳 餵_lv2+_title.png
 早 曳 餵_lv2_title.png
 早 曳 餵_lv3+_title.png
 早 曲 餵_lv3_title.png
 曳 嬴檜夔
 早 曳 BackButton_Blue.png
 早 曳 BackButton_Orange.png
 早 曳 BackButton_Pink.png
 早 曳 BackButton_Purple.png
 早 曳 Continue.png
 早 曳 PlayButton.png
 早 曳 Pop-CloseButton.png
 早 曳 QuestionButton.png
 早 曳 RefreshButton.png
 早 曳 SaveButton.png
 早 曳 Start.png
 早 曳 StopButton.png
 早 曳 User1_Icon.png
 早 曳 User2_Icon.png
 早 曳 User3_Icon.png
 早 曲 User4_Icon.png
 曳 Background.png
 曳 Button_Question.png
 曳 creamo_logo.png
 曲 Title_CREAMOADDIBLOCK.png
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