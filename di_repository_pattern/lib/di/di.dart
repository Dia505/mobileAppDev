//get_it - service locator (dependency injection library)
  //it provides needed dependencies
  //helps to work with classes using single instances (prevents memory leak)

//Using get_it, all objects are created here

import 'package:di_repository_pattern/data_source/local/local_data_source.dart';
import 'package:di_repository_pattern/data_source/remote/remote_data_source.dart';
import 'package:di_repository_pattern/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

//creating global instance, so that its shareable across the project folders
final getIt = GetIt.instance;

//Sets up all the dependencies required by an application in one place
void initModule() {
  
  //Create parent class objects 
    //eg:- parent classes of UserRepository are RemoteDataSource and LocalDataSource

  //registerSingleton - instance is created immediately upon registration (function call)
  //registerLazySingleton - instance is created only when it is first accessed
  //They both create singleton instances

  //Here the object of RemoteDataSource and LocalDataSource is inside the getIt instance
  getIt.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource());
  getIt.registerLazySingleton<LocalDataSource>(() => LocalDataSource());

  //Child class object
  getIt.registerLazySingleton(() => UserRepository(
    remoteDataSource: getIt(), 
    localDataSource: getIt()
    )
  );
}