// import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:movies_app/domain/entities/no_params.dart';

// import 'package:movies_app/domain/entities/app_error.dart';
// import 'package:movies_app/domain/entities/movie_entity.dart';
// import 'package:movies_app/domain/usecases/get_comming_soon.dart';
// import 'package:movies_app/domain/usecases/get_playing_now.dart';
// import 'package:movies_app/domain/usecases/get_popular.dart';
// import 'package:movies_app/domain/usecases/get_trending.dart';
import 'package:pedantic/pedantic.dart';
import 'di/get_it.dart' as getIt;

import 'package:movies_app/presentation/movie_app.dart';

// void main() async {
//   unawaited(getIt.init());
//   GetTrending getTrending = getIt.getItInstance<GetTrending>();
//   // GetPopular getPopular = GetPopular(movieRepository);
//   // GetPlayingNow getPlayingNow = GetPlayingNow(movieRepository);
//   // GetCommingSoon getCommingSoon = GetCommingSoon(movieRepository);
//   final Either<AppError, List<MovieEntity>> eitherResponse =
//       await getTrending(NoParams());
//   eitherResponse.fold(
//     (l) {
//       print('error');
//       print(l);
//     },
//     (r) {
//       print('list of movies');
//       print(r);
//     },
//   );
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Container(),
//     );
//   }
// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());
  runApp(MovieApp());
}
