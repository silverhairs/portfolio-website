import 'package:hive/hive.dart';
part 'user_profile.g.dart';

@HiveType(typeId: 1)
class UserProfile {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String profilePictureURL;
  @HiveField(3)
  final String bio;
  @HiveField(4)
  final String country;
  @HiveField(5)
  final Map<String, String> socialLinks;

  const UserProfile({
    required this.name,
    required this.email,
    required this.profilePictureURL,
    required this.bio,
    required this.country,
    required this.socialLinks,
  });

  Map<String, dynamic> toMap() => {
        'name': this.name,
        'email': this.email,
        'profile-picture': this.profilePictureURL,
        'bio': this.bio,
        'country': this.country,
        'social-links': this.socialLinks,
      };

  static UserProfile fromMap(Map<String, dynamic> data) => UserProfile(
        name: data['name'],
        email: data['email'],
        profilePictureURL: data['profile-picture'],
        bio: data['bio'],
        country: data['country'],
        socialLinks: data['social-links'],
      );
}
