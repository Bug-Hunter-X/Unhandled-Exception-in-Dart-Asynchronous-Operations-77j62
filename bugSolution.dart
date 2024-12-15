```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      //Example of additional error handling
      if(jsonData == null){
        throw Exception('JSON data is null');
      }
      // Process jsonData safely
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request
    print('Error fetching data: $e');
    // Example of how to handle specific exceptions
    if(e is FormatException){
      print('Invalid JSON format');
    }
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```