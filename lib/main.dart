import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/firebase_options.dart';
import 'package:project/service/service.dart';
import 'package:project/views/home_view.dart';

import 'logice/logic.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  RestAPIService service = RestAPIService();
  // AuthService authService = AuthService();
  // CacheToken cacheToken = CacheToken();
  runApp(MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => AuthLogic(authService, cacheToken)),
        BlocProvider<LogicalService>(
            create: (context) => LogicalService(service)),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      )));
}
