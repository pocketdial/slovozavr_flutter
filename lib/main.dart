import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/check_bloc/check_bloc.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/secret_word_cubit/secret_word_cubit.dart';
import 'package:slovozavr_flutter/feature/presentation/pages/game_screen.dart';
import 'package:slovozavr_flutter/locator_service.dart' as di;
import 'package:slovozavr_flutter/locator_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SecretWordCubit>(
            create: (context) => sl<SecretWordCubit>()),
        BlocProvider<CheckWordBloc>(create: (context) => sl<CheckWordBloc>()),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          backgroundColor: AppColors.mainBackground,
          scaffoldBackgroundColor: AppColors.mainBackground,
        ),
        home: HomePage(),
      ),
    );
  }
}
