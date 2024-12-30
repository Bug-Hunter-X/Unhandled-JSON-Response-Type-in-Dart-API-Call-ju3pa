# Unhandled JSON Response Type in Dart API Call

This repository demonstrates a common error in Dart when handling asynchronous API calls and JSON responses.  The code attempts to access a JSON response as a Map<String, dynamic>, but the actual response might be different, resulting in a runtime error.

## The Bug
The `fetchData()` function fetches data from an API endpoint.  If the API returns a JSON response that isn't a Map, like a list [], or the server returns a non-200 status code, the code will throw an exception.  The current error handling only prints a general error message to the console, making debugging challenging.

## The Solution
The solution involves improved error handling and data validation. The solution checks the type of jsonData before accessing its elements, gracefully handling cases where the data is not a map or the expected key is missing.