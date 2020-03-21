class Account {
  var name;
  var pic;
  var bio;
  var job;

  Account(this.name, this.pic, this.bio, this.job);

  static List<Account> getSample() {
    return [
      Account(
          "Server TG",
          "https://images.pexels.com/photos/818261/pexels-photo-818261.jpeg?cs=srgb&dl=gray-scale-photo-of-male-with-beard-818261.jpg",
          "no job",
          "no bio"),
      Account(
          "Server TG",
          "https://images.pexels.com/photos/818261/pexels-photo-818261.jpeg?cs=srgb&dl=gray-scale-photo-of-male-with-beard-818261.jpg",
          "no job",
          "no bio"),
      Account(
          "Server TG",
          "https://images.pexels.com/photos/818261/pexels-photo-818261.jpeg?cs=srgb&dl=gray-scale-photo-of-male-with-beard-818261.jpg",
          "no job",
          "no bio"),
      Account(
          "Server TG",
          "https://images.pexels.com/photos/818261/pexels-photo-818261.jpeg?cs=srgb&dl=gray-scale-photo-of-male-with-beard-818261.jpg",
          "no job",
          "no bio"),
    ];
  }
}
