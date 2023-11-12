import '../model/post.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  Future<List<Post>?> getPosts() async {

    var clint = http.Client();
    
    
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await clint.get(uri);
    if ( response.statusCode == 200){
      var json = response.body;
      return postFromJson(json);
    }

  }
}
