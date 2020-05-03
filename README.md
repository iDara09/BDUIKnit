<p align="center">
<picture>
  <source srcset="bduiknit-logo-white.png" media="(prefers-color-scheme: dark)">
  <img src="bduiknit-logo.png" width="400" max-width="90%" alt="BDUIKnit" />
</picture>
</p>

<p align="center">
    <img src="https://img.shields.io/badge/Swift-5.1-orange.svg" />
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/swiftpm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
    </a>
</p>

<!-- omit in toc -->
# BDUIKnit

BDUIKnit is a collection of SwiftUI custom reusable UI components and extensions packed in a Swift Package Manager.

- [Goals](#goals)
- [Todo](#todo)
- [Get Started](#get-started)
  - [Installation](#installation)
  - [Quick Introduction](#quick-introduction)
  - [BDButtonTrayView](#bdbuttontrayview)
  - [BDModalTextField](#bdmodaltextfield)
  - [BDModalTextView](#bdmodaltextview)

## Goals

- To collect my personal custom reusable UI and extensions and put them in one place.
- To create custom reusable UI and share them.
- To learn and share what I learnt building these UI & extensions.

## Todo

- [x] Gotta have a logo. σ(^_^;)
- [x] Add `ButtonTrayView`
- [x] Add `Color` extensions
- [x] Add `ModalTextField`
- [x] Add `ModalTextView`
- [ ] Add more...

## Get Started

### Installation

To add BDUIKnit to your project:

- Open your project in Xcode
- Go to `File > Swift Packages > Add Package Dependency...`
- Search for BDUIKnit and follow Xcode's installation dialog.

### Quick Introduction

BDUIKnit follows **MVVM** design pattern; therefore, most **Views** will have their corresponding **View Models**. View models are either `class` or `struct`, so use the appropriate `@ObservedObject`, `@State`, or `@Binding` as needed.

### BDButtonTrayView

A tray-like view that is normally pinned to the bottom-trailing of a scene.

![BDButtonTrayPreview-1][button-tray-preview]

<p align="center">Regular Vertical Size Class</p>

![BDButtonTrayPreview-2][button-tray-preview-horizontal]

<p align="center">Compact Vertical Size Class</p>

**Quick Start:**

- [`BDButtonTrayView`][BDButtonTrayView.swift]
- [`BDButtonTrayViewModel`][BDButtonTrayViewModel.swift]
- [`BDButtonTrayItem`][ButtonTrayItem.swift]

For sample code, see [`ButtonTrayViewPreview`][ButtonTrayViewPreview.swift]

### BDModalTextField

A text field view intended to be used as a modal presentation sheet when need to get inputs from user.

![BDModalTextFieldPreview][modal-text-field-preview]

**Quick Start:**

- [`BDModalTextField`][BDModalTextField.swift]
- [`BDModalTextFieldModel`][BDModalTextFieldModel.swift]

For sample code, see [`ModalTextFieldPreview`][ModalTextFieldPreview.swift]

### BDModalTextView

A text view intended to be used as a modal presentation sheet when need to get inputs from user.

![BDModalTextViewPreview][modal-text-view-preview]

**Quick Start:**

- [`BDModalTextView`][BDModalTextView.swift]
- [`BDModalTextViewModel`][BDModalTextViewModel.swift]

For sample code, see [`ModalTextViewPreview`][ModalTextViewPreview.swift]

<!-- BDUIKnit File Link -->

[BDButtonTrayViewModel.swift]: https://github.com/iDara09/BDUIKnit/blob/master/Sources/BDUIKnit/ButtonTray/BDButtonTrayViewModel.swift

[ButtonTrayItem.swift]: https://github.com/iDara09/BDUIKnit/blob/master/Sources/BDUIKnit/ButtonTray/ButtonTrayItem.swift

[BDButtonTrayView.swift]: https://github.com/iDara09/BDUIKnit/blob/master/Sources/BDUIKnit/ButtonTray/BDButtonTrayView.swift

[BDModalTextFieldModel.swift]: https://github.com/iDara09/BDUIKnit/blob/master/Sources/BDUIKnit/ModalTextField/BDModalTextFieldModel.swift

[BDModalTextField.swift]: https://github.com/iDara09/BDUIKnit/blob/master/Sources/BDUIKnit/ModalTextField/BDModalTextField.swift

[BDModalTextViewModel.swift]: https://github.com/iDara09/BDUIKnit/blob/master/Sources/BDUIKnit/ModalTextView/BDModalTextViewModel.swift

[BDModalTextView.swift]: https://github.com/iDara09/BDUIKnit/blob/master/Sources/BDUIKnit/ModalTextView/BDModalTextView.swift

<!-- Preview File Link -->

[ButtonTrayViewPreview.swift]: https://github.com/iDara09/BDProjects/blob/master/BDProjects/BDUIKnit%20Preview/ButtonTrayViewPreview.swift

[ModalTextFieldPreview.swift]: https://github.com/iDara09/BDProjects/blob/master/BDProjects/BDUIKnit%20Preview/ModalTextFieldPreview.swift

[ModalTextViewPreview.swift]: https://github.com/iDara09/BDProjects/blob/master/BDProjects/BDUIKnit%20Preview/ModalTextViewPreview.swift

<!-- Preview Image Link -->

[button-tray-preview]: https://user-images.githubusercontent.com/21166606/80023203-090a8f00-8492-11ea-9f5d-e625d6bd6202.png

[button-tray-preview-horizontal]: https://user-images.githubusercontent.com/21166606/80023242-16277e00-8492-11ea-94bc-186b11a58544.png

[modal-text-field-preview]: https://user-images.githubusercontent.com/21166606/79085645-37e47080-7cee-11ea-9d90-b73510e4506d.png

[modal-text-view-preview]: https://user-images.githubusercontent.com/21166606/80023271-217aa980-8492-11ea-8e52-23db8513654e.png
