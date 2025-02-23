# Unhandled JSON Key Error and Generic Exception Handling in Dart

This repository demonstrates a common error in Dart: not handling potential JSON key errors and using a generic catch-all for exceptions.

The `bug.dart` file contains code that fetches data from an API, processes it as JSON, and prints a value associated with a key.  However, it doesn't check if the key exists before trying to access it, which can lead to runtime errors.  Furthermore, the `catch` block is too general, obscuring the details of any error encountered.

The `bugSolution.dart` file provides a more robust version that addresses these issues.