Flutter Package: buy_package_cards
Overview
Custom Package Widgets is a Flutter package designed to simplify the display of pricing plans or subscription options in Flutter applications. It provides customizable widgets that can be easily integrated into your app's UI to showcase different package offerings.

Features
Customizable Package Widgets: Display package details such as name, price, duration, and additional information using customizable widgets.
Quick Start Button: Each package widget includes a quick start button for seamless access to getting started with the selected package.
Installation
To use this package in your Flutter project, add custom_package_widgets as a dependency in your pubspec.yaml file:

yaml
Copy code
dependencies:
  buy_package_cards: ^1.0.0  # Replace with the latest version
Then, import the package in your Dart code:

dart
Copy code
import 'package:buy_packages_card\lib\src\buy_package_cards.dart';
Usage
Wrap your package widgets inside a SingleChildScrollView widget to enable scrolling if the content overflows. Here's an example of how to use the buy_package_cards:

dart
Copy code
import 'package:flutter/material.dart';
import 'package:buy_packages_card\lib\src\buy_package_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('buy_package_cards Widgets Demo'),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                CustomPackageWidget(
                  packageName: 'Sliver package',
                  packagePrice: '8,000 PKR',
                  packageDuration: 'Per Month',
                  buttonOntap: () {
                    // Add your onTap logic here
                  },
                  quickStartText: 'Quick Start',
                  quickStartButtonOnTap: () {
                    // Add your Quick Start button onTap logic here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Replace the buttonOntap and quickStartButtonOnTap functions with your own logic.

Feedback and Contributions
Your feedback, feature requests, and contributions are highly appreciated! If you encounter any issues or have suggestions for improvements, please feel free to open an issue on the GitHub repository.