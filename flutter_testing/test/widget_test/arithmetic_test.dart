import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/screen/arithmetic_screen.dart';

void main() {
  //WidgetTester used for pumpWidget
  testWidgets("Should have a title", (WidgetTester tester) async {
    //pumpWidget used to run the widget in the background, without having to use emulator
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen()
      )
    );

    // //testing by checking the app bar title
    Finder title = find.text("Arithmetic Operations");
    expect(title, findsOneWidget);
  });

  testWidgets("Add two numbers", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen()
      )
    );

    //allows the ui changes to finish before final test response
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).first, "10");
    await tester.enterText(find.byType(TextField).last, "20");

    await tester.tap(find.widgetWithText(ElevatedButton, "Add"));
    await tester.pumpAndSettle();

    expect(find.text("Result : 30"), findsOneWidget);
  });

  testWidgets("Subtract two numbers", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen()
      )
    );

    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).at(0), "10");
    await tester.enterText(find.byType(TextField).at(1), "20");

    await tester.tap(find.byType(ElevatedButton).at(1));
    await tester.pumpAndSettle();

    expect(find.text("Result : -10"), findsOneWidget);
  });
}