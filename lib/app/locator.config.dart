// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/state_services/all_chat_service.dart';
import '../services/functional_services/authentication_service.dart';
import '../services/state_services/current_chatroom_service.dart';
import '../services/state_services/current_picture_service.dart';
import '../services/state_services/current_post_service.dart';
import '../services/state_services/current_user_service.dart';
import '../services/functional_services/database_service.dart';
import '../services/functional_services/firebase_service.dart';
import '../services/state_services/formatter_service.dart';
import '../services/functional_services/third_party_services_module.dart';
import '../services/state_services/visit_profile_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<AllChatService>(() => AllChatService());
  gh.lazySingleton<AuthenticationService>(() => AuthenticationService());
  gh.lazySingleton<CurrentChatroomService>(() => CurrentChatroomService());
  gh.lazySingleton<CurrentPictureService>(() => CurrentPictureService());
  gh.lazySingleton<CurrentPostService>(() => CurrentPostService());
  gh.lazySingleton<CurrentUserService>(() => CurrentUserService());
  gh.lazySingleton<DatabaseService>(() => DatabaseService());
  gh.lazySingleton<DialogService>(() => thirdPartyServicesModule.dialogService);
  gh.lazySingleton<FirebaseService>(() => FirebaseService());
  gh.lazySingleton<FormatterService>(() => FormatterService());
  gh.lazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  gh.lazySingleton<VisitProfileService>(() => VisitProfileService());
  return get;
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
