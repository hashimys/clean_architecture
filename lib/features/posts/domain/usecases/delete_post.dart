import 'package:clean_architecture/core/error/failuers.dart';
import 'package:clean_architecture/features/posts/domain/repositories/posts_repositoriy.dart';
import 'package:dartz/dartz.dart';

class DeletePostUsecase {
  final PostsRepository repository;

  DeletePostUsecase(this.repository);

  Future<Either<Failure, Unit>> call(int postId) async {
    return await repository.deletePost(postId);
  }
}
