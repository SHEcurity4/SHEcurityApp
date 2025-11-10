import 'package:shecurity/api/registerapi.dart';

Future<List<Map<String, dynamic>>> fetchColleges() async{
  try {
    final res= await dio.get('$url/ViewColleges');
    print(res.data);
    if (res.statusCode==200 || res.statusCode==201) {
      return List<Map<String, dynamic>>.from(res.data);
    } else {
      throw Exception('failed to fetch colleges');
    }
  } catch (e) {
    print(e);
    throw Exception(e);
    
  }
}