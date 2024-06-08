class User {
  int? id;
  String? name;
  String? address;
  String? createdAt;

  User(this.name, this.address, this.createdAt);

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'address': address,
      'created_at': createdAt,
    };
  }
}
