class UserType {
  String? id;
  String? name ;

//<editor-fold desc="Data Methods">
  UserType({
    this.id,
    this.name,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserType &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name);

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'UserType{' + ' id: $id,' + ' name: $name,' + '}';
  }

  UserType copyWith({
    String? id,
    String? name,
  }) {
    return UserType(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
    };
  }

  factory UserType.fromMap(Map<String, dynamic> map) {
    return UserType(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

//</editor-fold>
}
