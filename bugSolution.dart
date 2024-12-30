```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      //Robust error handling and type checking
      if (jsonData is Map<String, dynamic> && jsonData.containsKey('key')) {
        print(jsonData['key']);
      } else {
        throw Exception('Invalid data format or missing key: key');
      }
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    print('Error: $e'); //More informative error messages
    //Consider more sophisticated error handling like showing a user-friendly message
    //or retrying the request.
  }
}
```