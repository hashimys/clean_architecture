import 'package:clean_architecture/core/error/failuers.dart';
import 'package:clean_architecture/features/posts/domain/entities/post.dart';
import 'package:clean_architecture/features/posts/domain/repositories/posts_repositoriy.dart';
import 'package:dartz/dartz.dart';

class UpdatePostUsecase {
  final PostsRepository repository;

  UpdatePostUsecase(this.repository);

  Future<Either<Failure, Unit>> call(Post post) async {
    return await repository.updatePost(post);
  }
}
