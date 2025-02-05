import 'package:get_it/get_it.dart';
import 'package:the_basics/locator/navigation_services.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
