class WebtoonModel {
  final String id, title, thumb;

  // 다양한 파라미터 구조로 초기화 가능한 named constructor
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
