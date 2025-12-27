import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mydemoapp/app/myapp.dart';

void main() {
   testWidgets('Hello World', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
  
     expect(find.byType(Container), findsOneWidget);
     expect(find.byType(Center), findsOneWidget);
     expect(find.text("Hello, World!"), findsOneWidget);
   });
}