# README
# Project Manager
프로젝트 적용 기술
| **UI**     | **`UIKit`**     |
| --- | --- |
| **Design Pattern** | **`MVC`** |
| **Local DB**| **`CoreData`**      |
| **Remote DB**| **`Firebase`**     |
| **의존성 관리 도구** | **`CocoaPods`** |
| **라이브러리** | **`SwiftLint`** |

---
## 📖 목차
1. [소개](#-소개)
2. [기능 소개](#-기능-소개)
3. [Object Diagram](#-object-diagram)
4. [폴더 구조](#-폴더-구조)
5. [프로젝트에서 경험하고 배운 것](#-프로젝트에서-경험하고-배운-것)
6. [타임라인](#-타임라인)
7. [고민한 부분](#-고민한-부분)
8. [트러블 슈팅](#-트러블-슈팅)
9. [참고 링크](#-참고-링크)

---
## 🌱 소개
|[LJ](https://github.com/lj-7-77)|
|:---:|
|<img width="180px" img style="border: 2px solid lightgray; border-radius: 90px;-moz-border-radius: 90px;-khtml-border-radius: 90px;-webkit-border-radius: 90px;" src="https://i.imgur.com/ggU7PLR.jpg">|

---

## 🛠 기능 소개
할 일 목록을 TODO, DOING, DONE 으로 나누어 실천력을 높이는 앱 입니다.
| ![](https://i.imgur.com/R71vVBw.gif) | 
| :-------: | 

---
## 👀 Object Diagram
| ![](https://i.imgur.com/U0TSmS6.png) | 
| :-------: | 

---

## 🗂 폴더 구조
```
ProjectManager
├── AppDelegate.swift
├── SceneDelegate.swift
├── Assets.xcassets
├── Model
│   ├── DummyData.swift
│   ├── Item.swift
│   └── ItemModel.xcdatamodeld
└── View
│   ├── MainView.swift
│   └── PopupView.swift
├── Controller
│   ├── CoreDataManager.swift
│   ├── MainViewController.swift
│   └── PopupViewController.swift
├── Info.plist
└── README.md
```

---

## ✅ 프로젝트에서 경험하고 배운 것
- 프로젝트 적용가능한 기술들의 특징 및 장단점, 적용 기준
- MVC 디자인패턴에 따른 각 객체의 역할 및 객체간 관계 고민


---

## ⏰ 타임라인

| Step 1|  |
| :--------: | -------- |
| 1 | DB, Framework, 의존성관리도구 공부 |
| 2 | MVC디자인패턴을 적용한 각 객체의 역할 고민 | 
</br>

| Step 2|  |
| :--------: | -------- |
| 1 | MVC디자인패턴을 적용한 설계 |
| 2 | Object Diagram에 따른 메서드 작성 | 

---

## 💭 고민한 부분
### 1️⃣ 플러스버튼을 Controller와 View 중 누가 갖고있어야 하는지
- 버튼은 UI요소이므로 View에 있어야 하고, 버튼이 눌렸을 때 실행될 메서드는 Controller에 있어야한다고 생각했습니다.
- 버튼의 타입은 UIBarButtonItem으로 내비게이션바의 요소여서 내비게이션컨트롤러의 루트뷰컨트롤러인 메인뷰컨트롤러에 구현하게 하였습니다.

### 2️⃣ 뷰의 재사용성 면에서 보았을 때, TableView가 3개 있는것이 맞는지
- TableView 3개를 생성 후 각 테이블의 위임자를 MainViewController로 지정하였습니다. 만약 필요한 테이블 개수가 늘어난다면, MainViewController는 계속해서 크기가 커지는 것이 맞는것일까 고민하였습니다. 
- TableView 하나만 있고, 테이블 내용만 변경하여 뷰를 재사용하고자 합니다.

---

## 🚀 트러블 슈팅
(구현 후 추가예정입니다.)

---

## 🔗 참고 링크
[Apple Document Archive - MVC](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html)
