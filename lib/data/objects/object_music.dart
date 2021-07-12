class MusicObject {
  final String id;
  final String musicUrl;
  final String holderUrl;
  final String name;

  const MusicObject(
      {required this.id,
      required this.musicUrl,
      required this.holderUrl,
      required this.name});

  factory MusicObject.fromGsheets(Map<String, dynamic> json) {
    return MusicObject(
      id: json['id'] ?? '',
      name: json['Name'],
      musicUrl: json['URL'] ?? '',
      holderUrl: json['Art'] ?? '',
    );
  }

  Map<String, dynamic> toGsheets() {
    return {
      'id': id,
      'name': name,
      'musicUrl': musicUrl,
      'holderUrl': holderUrl,
    };
  }
}
