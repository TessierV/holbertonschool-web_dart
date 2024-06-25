void outer(String name, String id) {
  print('Hello Agent ${inner(name)} your id is $id');
}

String inner(String name) {
  List<String> nameParts = name.split(' ');
  return nameParts.length >= 2
    ? '${nameParts[1][0]}.${nameParts[0]}'
    : name;
}
