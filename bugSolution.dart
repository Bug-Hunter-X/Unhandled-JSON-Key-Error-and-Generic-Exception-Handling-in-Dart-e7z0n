```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData.containsKey('key')) {
        print(jsonData['key']);
      } else {
        print('Error: Key "key" not found in JSON response.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format: $e');
  } on http.ClientException catch (e) {
    print('Error: HTTP client exception: $e');
  } catch (e) {
    print('Error: An unexpected error occurred: $e');
  }
}
```