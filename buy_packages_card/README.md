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
  buy_packages_card: ^1.0.4  # Replace with the latest version

  How to use:

```dart

import 'package:buy_packages_card/buy_packages_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("buy_packages_card"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BuyPackageCard(
            packageName: "Basic package",
            packagePrice: "4,000 PKR",
            packageDuration: 'Per/Month',
            buttonOntap: () {},
            quickStartText: "Quick Start",
            quickStartButtonOnTap: () {},
            buttonTextStyle: const TextStyle(color: Colors.white),
            buttonText: "Buy Now",
            text1: "24/7 Customer Support",
            text2: "100+ Audio Calls",
            text3: "200+ Video Calls",
            text4: "100+ minutes",
          ),
        ],
      ),
    );
  }
}

```
