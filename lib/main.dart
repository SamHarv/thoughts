import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:url_strategy/url_strategy.dart';

import './providers/favourite_provider.dart';

import './routes.dart';
import 'constants.dart';
import 'models/post_model.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PostAdapter());
  setPathUrlStrategy();
  runApp(const MoM());
}

class MoM extends StatelessWidget {
  const MoM({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavouriteProvider(),
      child: MaterialApp.router(
        theme: ThemeData(primaryColor: color),
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: 'Matter of Movement',
      ),
    );
  }
}

//todo: 
//fix refresh/ link copy & paste issue

//check out all Firebase features (set them up)
//add search functionality with topic tags/ keys
//add comment functionality
//implement switch to enable dark mode
//improve performance
//work on O2 Tech webpage

//To Update Firebase:
//Save project;
//Change the version on pubspec.yaml (from 1.0.0+1 to 1.0.1+1 for example);
//Run flutter build web.
//Run firebase deploy.

//Update Github
//git add .
//git commit -m "Customisable Message which describes changes"
//git push
