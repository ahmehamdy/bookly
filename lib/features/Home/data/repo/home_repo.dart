import 'package:book_app/core/errors/Failur.dart';
import 'package:book_app/features/Home/data/models/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failur,List<Books>>> featchAllBooks();
  Future<Either<Failur,List<Books>>> featchBestSellerBooks();
}