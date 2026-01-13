import 'dart:js_interop';

import 'package:http/http.dart' as http;

@JS()
external set exported(JSFunction value);

void internal(String input, JSFunction callback) async {
  final response = await http.get(Uri.parse(input));

  callback.callAsFunction(null, response.body.toJS);
}

void main() {
  exported = internal.toJS;
}
