class UserModel {
  String? id;
  String? name;
  String? username;
  String? types;

//<editor-fold desc="Data Methods">
  UserModel({
    this.id,
    this.name,
    this.username,
    this.types,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          username == other.username &&
          types == other.types);

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ username.hashCode ^ types.hashCode;

  @override
  String toString() {
    return 'UserModel{ id: $id, name: $name, username: $username, types: $types,}';
  }

  UserModel copyWith({
    String? id,
    String? name,
    String? username,
    String? types,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      types: types ?? this.types,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'username': this.username,
      'types': this.types,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      username: map['username'] as String,
      types: map['types'] as String,
    );
  }

//</editor-fold>
}
