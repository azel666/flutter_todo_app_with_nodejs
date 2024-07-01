import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<Todo>>> getTodos();
  Future<Either<Failure, Todo>> createTodo(Todo todo);
  Future<Either<Failure, Todo>> updateTodo(Todo todo);
  Future<Either<Failure, void>> deleteTodo(int id);
}
