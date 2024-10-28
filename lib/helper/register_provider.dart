import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';


var providers = [
  ChangeNotifierProvider<AuthProvider>(create: ((context) => AuthProvider())),
];
