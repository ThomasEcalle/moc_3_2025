class User {
  final String firstName;
  final String lastName;

  User(this.firstName, this.lastName);
}

class UserTwo {
  final String firstName;
  final String lastName;

  UserTwo({required this.firstName, required this.lastName});
}

void main() {
  final toto = User('Thomas', 'Ecalle');
  final totoBis = UserTwo(firstName: 'Thomas', lastName: "Ecalle");

  print(toto.firstName.length);
  print(totoBis.firstName);
  print(totoBis.lastName);

  // toto.firstName = 'tata';
  // final name = 'Thomas';
  // name = 'Bernard';
}
