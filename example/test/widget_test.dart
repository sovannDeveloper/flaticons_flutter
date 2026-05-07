import 'package:example/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Shows f_icons example content', (WidgetTester tester) async {
    await tester.pumpWidget(const FIconsExampleApp());

    expect(find.text('f_icons example'), findsOneWidget);
    expect(find.text('Import'), findsOneWidget);
    expect(find.text('Br.access_control'), findsOneWidget);
    expect(find.text('Rs.arrow_right'), findsOneWidget);

    await tester.drag(find.byType(ListView), const Offset(0, -600));
    await tester.pumpAndSettle();

    expect(find.text('FlatIcon.r_play'), findsOneWidget);
  });
}
