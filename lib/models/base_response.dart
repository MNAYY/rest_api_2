import 'user.dart';

class BaseResponse {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<User>? data;

  BaseResponse({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
        page: json['page'] as int?,
        perPage: json['per_page'] as int?,
        total: json['total'] as int?,
        totalPages: json['total_pages'] as int?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => User.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
