import 'package:di_repository_pattern/data_source/local/local_data_source.dart';
import 'package:di_repository_pattern/data_source/remote/remote_data_source.dart';
import 'package:di_repository_pattern/di/di.dart';
import 'package:di_repository_pattern/model/user.dart';
import 'package:di_repository_pattern/repository/user_repository.dart';

void main() {
  //Since di has singleton instances of classes using getIt, 
    //we dont need to create any objects here

  // final UserRepository userRepository = UserRepository(
  //   remoteDataSource: RemoteDataSource(),
  //   localDataSource: LocalDataSource() 
  // );

  //Always have to call this function to initialize and register dependency objects
  initModule();

  //This line alone provides the required instances from di file
  UserRepository userRepository = getIt<UserRepository>();

  List<User> userList = userRepository.getAllUser();
  print(userList);
}