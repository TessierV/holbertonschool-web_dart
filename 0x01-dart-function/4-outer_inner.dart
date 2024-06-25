void outer(String name, String id) {
  print('Hello Agent ${inner(name)} your id is $id');
}

String inner(String name) {
  List<String> nameParts = name.split(' ');
  if (nameParts.isNotEmpty) {
    String firstName = nameParts[0];
    return 'B.$firstName';
  } else {
    return '';
  }
}
