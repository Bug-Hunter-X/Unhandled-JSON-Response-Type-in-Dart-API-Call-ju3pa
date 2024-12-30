```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response
      final jsonData = jsonDecode(response.body);
      // Access and process jsonData here. If jsonData is not a map, an error will occur.
       if(jsonData is! Map<String, dynamic>){
        throw Exception('Data is not in expected format');
       }
       print(jsonData['key']);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e'); //This catches both jsonDecode and http errors
    rethrow; //Rethrow to allow handling further up the call stack.
  }
}
```