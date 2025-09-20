// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/authentication/data/data%20source/register/register_data_source.dart'
    as _i407;
import '../../features/authentication/data/data%20source/register/register_data_source_impl.dart'
    as _i52;
import '../../features/authentication/data/repository/register_repository_impl.dart'
    as _i460;
import '../../features/authentication/domain/repository/register_repository.dart'
    as _i851;
import '../../features/authentication/domain/use%20case/register_use_case.dart'
    as _i1043;
import '../../features/authentication/ui/cubit/authentication_view_model.dart'
    as _i239;
import '../api%20manager/api_manager.dart' as _i949;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i949.ApiManager>(() => _i949.ApiManager());
    gh.factory<_i407.RegisterDataSource>(
      () => _i52.RegisterDataSourceImpl(apiManager: gh<_i949.ApiManager>()),
    );
    gh.factory<_i851.RegisterRepository>(
      () => _i460.RegisterRepositoryImpl(
        registerDataSource: gh<_i407.RegisterDataSource>(),
      ),
    );
    gh.factory<_i1043.RegisterUseCase>(
      () => _i1043.RegisterUseCase(
        registerRepository: gh<_i851.RegisterRepository>(),
      ),
    );
    gh.factory<_i239.AuthViewModel>(
      () => _i239.AuthViewModel(registerUseCase: gh<_i1043.RegisterUseCase>()),
    );
    return this;
  }
}
