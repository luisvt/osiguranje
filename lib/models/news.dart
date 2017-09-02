class News {
  num id;
  String address;
  String title;
  String news;
  String date;
  String picture;

  News(this.id, this.address, this.news, this.date, this.picture);

  String toString() => '$address';
}