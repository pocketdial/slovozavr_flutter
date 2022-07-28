import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/feature/domain/game.dart';
import 'package:slovozavr_flutter/feature/presentation/widgets/app_bar_widget.dart';
import 'package:slovozavr_flutter/feature/presentation/widgets/body_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/secret_word_cubit/secret_word_cubit.dart';
import 'package:slovozavr_flutter/feature/presentation/bloc/check_bloc/check_bloc.dart';
import 'package:slovozavr_flutter/locator_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showDialogIfFirstLoaded(context));
    return MultiBlocProvider(
      providers: [
        BlocProvider<SecretWordCubit>(
            create: (context) => sl<SecretWordCubit>()),
        BlocProvider<CheckWordBloc>(create: (context) => sl<CheckWordBloc>()),
      ],
      child: Scaffold(
        appBar: AppBarWidget.getAppBar(context),
        body: BodyWidget(),
      ),
    );
  }
}
