class AlbumModel {
  final String title, url, thumbnailUrl;
  final int id, albumId;

  AlbumModel({
    required this.title,
    required this.url,
    required this.thumbnailUrl,
    required this.id,
    required this.albumId,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
      id: json['id'],
      albumId: json['albumId'],
    );
  }
}
