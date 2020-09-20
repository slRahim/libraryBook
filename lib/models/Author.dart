class Author {

  int id ;
  String name ;
  String username;
  String email;

  Author(this.id, this.name, this.username, this.email);

  Author.fromJson(Map<String, dynamic> json){
    id = json["id"];
    name = json['name'];
    username = json['username'];
    email = json['email'];
  }


}