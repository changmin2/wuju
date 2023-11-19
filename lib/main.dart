import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/provider/go_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      ProviderScope(child: _App())
  );
}

class _App extends ConsumerWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final router = ref.watch(routerProvider);
    
    // 상단바 설정
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // 투명색
      statusBarIconBrightness: Brightness.dark,
    ));

    // final state = ref.watch(secureStorageProvider);
    // state.deleteAll();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      theme: ThemeData(
        fontFamily: 'SeoulNamsan',
      ),
    );
  }
}
