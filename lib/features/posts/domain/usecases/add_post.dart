import 'package:clean_architecture/core/error/failuers.dart';
import 'package:clean_architecture/features/posts/domain/entities/post.dart';
import 'package:clean_architecture/features/posts/domain/repositories/posts_repositoriy.dart';
import 'package:dartz/dartz.dart';

class AddPostUsecase {
  final PostsRepository repository;

  AddPostUsecase(this.repository);

  Future<Either<Failure, Unit>> call(Post post) async {
    return await repository.addPost(post);
  }
}
