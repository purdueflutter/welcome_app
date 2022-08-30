import 'package:flutter_test/flutter_test.dart';

import 'package:welcome_app/main.dart';

void main() {
  testWidgets('basic test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const WelcomeApp());
  });
}
