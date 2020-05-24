class Videos {
  String id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  Videos({this.id, this.titulo, this.descricao, this.canal, this.imagem});

  factory Videos.fromJason(Map<String, dynamic> json) {
    return Videos(
      id: json["id"]["videoId"],
      titulo: json["snippet"]["title"],
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      canal: json["snippet"]["channelId"],
    );
  }
}
