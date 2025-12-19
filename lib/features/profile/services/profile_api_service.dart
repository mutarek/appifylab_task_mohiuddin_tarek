import 'package:appifylab/config/api_config.dart';
import 'package:appifylab/models/auth_response.dart';
import 'package:appifylab/core/services/dio_client.dart';

class ProfileApiService {
  final DioClient _dioClient;

  ProfileApiService({required DioClient dioClient}) : _dioClient = dioClient;

  Future<User> getUserProfile() async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      ApiConfig.getProfileEndpoint,
    );

    return User.fromJson(response);
  }

  Future<User> getUserProfileById(String userId) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      '${ApiConfig.getProfileEndpoint}$userId',
    );

    return User.fromJson(response);
  }

  Future<User> updateUserProfile({
    String? fullName,
    String? aboutMe,
    String? globeLink,
    String? youtubeLink,
    String? linkedinLink,
    String? facebookLink,
  }) async {
    final data = <String, dynamic>{};

    if (fullName != null) data['full_name'] = fullName;
    if (aboutMe != null) data['about_me'] = aboutMe;
    if (globeLink != null) data['globe_link'] = globeLink;
    if (youtubeLink != null) data['youtube_link'] = youtubeLink;
    if (linkedinLink != null) data['linkedin_link'] = linkedinLink;
    if (facebookLink != null) data['facebook_link'] = facebookLink;

    final response = await _dioClient.put<Map<String, dynamic>>(
      ApiConfig.getProfileEndpoint,
      data: data,
    );

    return User.fromJson(response);
  }
}

