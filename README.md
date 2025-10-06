# Hannah Montana Tickets

**Repository:**

[https://github.com/davigl/flutter-hannah-montana](https://github.com/davigl/flutter-hannah-montana)

![image.png](/assets/images/app-preview.png)

**Learned:**

Create a Flutter Project:

```bash
flutter doctor -v
flutter create project_name
```

Run a Flutter Project:

```bash
# On vscode functions:

Flutter: Select device
Run > Start Debugging
```

How to setup main.dart:

```dart
import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {  runApp(const App());}

class App extends StatelessWidget {
	const App({super.key});

  @override  Widget build(BuildContext context) {
	  return MaterialApp(
		  title: "GoMoon",
		  theme: ThemeData(scaffoldBackgroundColor: Color(0xFF3c096c)),
		  home: HomePage(),
	  );
	}
}
```

How to create a page:

```dart
// Create your pages inside of lib/pages
// home_page.dart

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
	late double _deviceHeight, _deviceWidth;

	const HomePage({super.key});

  @override Widget build(BuildContext context) {
	  _deviceHeight = MediaQuery.of(context).size.height;
	  _deviceWidth = MediaQuery.of(context).size.width;

	  return Scaffold(
		  body: SafeArea(
			  child: Container(
				  child: Stack(children: [...your-widgets-here])
			  )
		  )
	  )
	}
}
```

How to create a stateless widget:

```dart
// Create your widgets inside of lib/widgets
// custom_button.dart

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
	const CustomButton({super.key});

  @override Widget build(BuildContext context) {
	  return Container(...);
	}
}
```

How to create text widget and style it:

```dart
Widget _pageTitle() {
	return const Text(
		"your-text-here",
		style: TextStyle(
			color: Colors.white,
			fontSize: 40,
			fontWeight: FontWeight.w800,
			fontFamily: "Roboto",
		),
		textAlign: TextAlign.left,
	);
}
```

How to create a image widget and style it:

```dart
// you need to create a assets/images folder on the root and enable it on pubspec.yaml file
// assets:    - assets/images/

Widget _hannahMontanaImage() {
	return Container(
		height: _deviceHeight * 0.5,
		decoration: const BoxDecoration(
		  image: DecorationImage(
			  image: AssetImage("assets/images/hannah-montana.png"),
			  fit: BoxFit.contain,
			),
		),
	);
}
```

How to create a flex wrapper widget:

```dart
Widget _bookTicketWrapper() {
	return Flex(
		direction: Axis.vertical,
		spacing: 16,
		children: [_tourDropdown(), _seatDropdown(), _bookTicketButton()],
	);
}
```

How to create a button widget:

```dart
Widget _bookTicketButton() {
	return Container(
		margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
    width: _deviceWidth,
    decoration: BoxDecoration(
	    color: Colors.white,
		  borderRadius: BorderRadius.circular(10),
		),
		child: MaterialButton(
			onPressed: () => {},
			child: const Text("Book Ticket", style: TextStyle(color: Colors.black)),
		),
	);
}
```

How to create a drop down button widget:

```dart
Widget _customDropdownButton() {
	return Container(
		padding: EdgeInsets.symmetric(horizontal: width * 0.05),
		width: width,
		decoration: BoxDecoration(
			color: Color(0xFF7b2cbf),
			borderRadius: BorderRadius.circular(10),
		),
		child: DropdownButton(
		items: listItems.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
		value: listItems.first,
		underline: Container(),
		menuWidth: width,
		dropdownColor: Color(0xFF7b2cbf),
		style: const TextStyle(color: Colors.white),
		onChanged: (_) {},
	);
}
```
