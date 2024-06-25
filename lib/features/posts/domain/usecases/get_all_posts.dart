import 'package:clean_architecture/core/error/failuers.dart';
import 'package:clean_architecture/features/posts/domain/entities/post.dart';
import 'package:clean_architecture/features/posts/domain/repositories/posts_repositoriy.dart';
import 'package:dartz/dartz.dart';

class GetAllPostsUsecase {
  final PostsRepository repository;

  GetAllPostsUsecase(this.repository);

  Future<Either<Failure, List<Post>>> call() async {
    return await repository.getAllPosts();
  }
}
