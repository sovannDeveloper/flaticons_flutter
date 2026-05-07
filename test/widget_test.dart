import 'package:f_icons/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Shows f_icons usage examples', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('f_icons example'), findsOneWidget);
    expect(find.text('Use CSS prefix classes'), findsOneWidget);
    expect(find.text('Br.access_control'), findsOneWidget);
    expect(find.text('Rs.arrow_right'), findsOneWidget);
    expect(find.text('Br.i_360_degrees'), findsOneWidget);
    expect(find.text('FlatIcon.r_play'), findsOneWidget);
  });
}
