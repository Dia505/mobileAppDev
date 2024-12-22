import 'package:di_repository_pattern/data_source/local/local_data_source.dart';
import 'package:di_repository_pattern/data_source/remote/remote_data_source.dart';
import 'package:di_repository_pattern/model/user.dart';

class UserRepository{
  //Check internet connection
  //if yes, get data from remote data source
  //else, from local data source

  //The Repository layer is making the decision of where the data goes and comes from
  //It is dependent on the data sources
  //On running this class, the objects of RemoteDataSource and LocalDataSource are created

  //dependencies
  // final RemoteDataSource _remoteDataSource = RemoteDataSource();
  // final LocalDataSource _localDataSource = LocalDataSource();

  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  //injecting dependency from outside using constructor
  UserRepository({
    required this.remoteDataSource,
    required this.localDataSource
  });

  bool isNetwork = true;

  //Check for internet connectivity and add user object
  bool addUser(User user) {
    if(isNetwork) {
      return remoteDataSource.addUser(user);
    }
    else {
      return localDataSource.addUser(user);
    }
  }

  List<User> getAllUser() {
    if(isNetwork) {
      return remoteDataSource.getAllUser();
    }
    else {
      return localDataSource.getAllUser();
    }
  }
    
}