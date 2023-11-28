import 'package:flutter_test/flutter_test.dart';
import 'package:buat/main.dart'; // Sesuaikan dengan path file main.dart

void main() {
  testWidgets('MyApp should display "Hello, Flutter!"', (WidgetTester tester) async {
    // Bangun widget dan panggil runApp
    await tester.pumpWidget(MyApp());

    // Temukan widget berdasarkan teks yang diharapkan
    expect(find.text('Hello, Flutter!'), findsOneWidget);
  });
}
