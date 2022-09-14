import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slovozavr_flutter/feature/domain/models/frame_data.dart';
import 'package:slovozavr_flutter/feature/domain/models/key_data.dart';
import 'package:slovozavr_flutter/feature/presentation/pages/game_screen.dart';
import 'package:slovozavr_flutter/locator_service.dart' as di;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FrameData(),
        ),
        ChangeNotifierProvider(
          create: (context) => KeyData(),
        ),
      ],
      child: MaterialApp(
        // theme: ThemeData.dark().copyWith(
        //   backgroundColor: AppColors.mainBackground,
        //   scaffoldBackgroundColor: AppColors.mainBackground,
        // ),
        theme: ThemeData(fontFamily: 'Ubuntu'),
        home: HomePage(),
      ),
    );
  }
}
