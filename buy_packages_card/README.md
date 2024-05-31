# Flutter Package: buy_packages_card

## Overview

Custom Package Widgets is a Flutter package designed to simplify the display of pricing plans or subscription options in Flutter applications. It provides customizable widgets that can be easily integrated into your app's UI to showcase different package offerings.

## Features

- **Customizable Package Widgets**: Display package details such as name, price, duration, and additional information using customizable widgets.
- **Quick Start Button**: Each package widget includes a quick start button for seamless access to getting started with the selected package.

## Installation

To use this package in your Flutter project, add `buy_packages_card` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  buy_packages_card: ^1.0.3  # Replace with the latest version

Usage
Wrap your package widgets inside a SingleChildScrollView widget to enable scrolling if the content overflows. Here's how to use the CustomPackageWidget:

Import the package:

dart
Copy code
import 'package:custom_package_widgets/custom_package_widgets.dart';
Use the CustomPackageWidget widget to display package details:

dart
Copy code
CustomPackageWidget(
  packageName: 'Basic package',
  packagePrice: '4,000 PKR',
  packageDuration: 'Per Month',
  buttonOntap: () {
    // Add your onTap logic here
  },
  quickStartText: 'Quick Start',
  quickStartButtonOnTap: () {
    // Add your Quick Start button onTap logic here
  },
)

Customize the widget properties as needed:

Feedback and Contributions
Your feedback, feature requests, and contributions are highly appreciated! If you encounter any issues or have suggestions for improvements, please feel free to open an issue on the GitHub repository.