import 'package:do_it/utils/AppRouter.dart';
import 'package:do_it/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/todo_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );


  HydratedBlocOverrides.runZoned(
        () => runApp(MyApp()),
    storage: storage,
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () =>
          BlocProvider(
            create: (context) => TodoBloc(),
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                builder: (context, widget) {
                  ScreenUtil.setContext(context);
                  return MediaQuery(
                    //Setting font does not change with system font size
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: widget!,
                  );
                },
                theme: kLightTheme,

                onGenerateRoute: AppRouter.onGenerateRoute
            ),
          ),
    );
  }
}