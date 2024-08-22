import 'package:book_app/core/errors/Failur.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/features/Home/data/models/books.dart';
import 'package:book_app/features/Home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpi implements HomeRepo{
  final ApiService apiService;

  HomeRepoImpi(this.apiService);
  @override
  Future<Either<Failur, List<Books>>> featchAllBooks() async{
    try {
      var data = await apiService.get(endpoint: "v1/volumes?Filtering=free-ebooks&q=subject:");
      List<Books> books =[];
      for( var item in data['items']){
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<Failur, List<Books>>> featchBestSellerBooks() async{
    try {
      var data = await apiService.get(endpoint: "v1/volumes?Sorting=newest&Filtering=free-ebooks&q=subject:");
      List<Books> books =[];
      for( var item in data['items']){
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

}