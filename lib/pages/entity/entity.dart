import 'package:flutter/foundation.dart';

class Entity {
  const Entity(
      {@required this.id,
      @required this.login,
      @required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.imageUrl,
      @required this.activated,
      @required this.langKey,
      @required this.authorities,
      @required this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate})
      : assert(id != null),
        assert(login != null),
        assert(firstName != null),
        assert(lastName != null),
        assert(email != null),
        assert(imageUrl != null),
        assert(activated != null),
        assert(langKey != null),
        assert(authorities != null),
        assert(createdBy != null),
        assert(createdDate != null);

  final int id;
  final String login;
  final String firstName;
  final String lastName;
  final String email;
  final String imageUrl;
  final bool activated;
  final String langKey;
  final List<dynamic> authorities;
  final String createdBy;
  final DateTime createdDate;
  final String lastModifiedBy;
  final DateTime lastModifiedDate;

  factory Entity.fromJson(Map<String, dynamic> json) {
    return Entity(
        id: json['id'],
        login: json['login'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        imageUrl: json['imageUrl'],
        activated: json['activated'],
        langKey: json['langKey'],
        authorities: json['authorities'],
        createdBy: json['createdBy'],
        createdDate: (json['createdDate'] != null)
            ? DateTime.parse(json['createdDate'])
            : null,
        lastModifiedBy: json['lastModifiedBy'],
        lastModifiedDate: (json['lastModifiedDate'] != null)
            ? DateTime.parse(json['lastModifiedDate'])
            : null);
  }
}


