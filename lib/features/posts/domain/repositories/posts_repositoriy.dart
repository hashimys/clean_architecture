import 'package:clean_architecture/features/posts/domain/entities/post.dart';

abstract class PostsRepositoriy {
  Future<List<Post>> getAllPosts();
  Future<bool> deletePost(int id);
  Future<bool> updatePost(Post post);
  Future<bool> addPost(Post post);
}
