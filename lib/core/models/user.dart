class User {
  String displayName;
  String handle;
  int followerCount;
  int followingCount;
  int? id;
  String pathToImage;

  User({
    required this.displayName,
    required this.handle,
    this.followerCount = 0,
    this.followingCount = 0,
    this.pathToImage = 'assets/blank-profile-picture.png',
    this.id,
  });
}
