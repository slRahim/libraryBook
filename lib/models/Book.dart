
class Book {
  String name ;
  String details ;
  String author ;

  Book(this.name, this.details, this.author);

  Book.fromJson(Map<String, dynamic> json){
    name = json['name'];
    details = json['details'];
    author = json['author'];
  }




}