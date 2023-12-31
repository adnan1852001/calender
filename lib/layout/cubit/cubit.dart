import 'package:flutter_bloc/flutter_bloc.dart';

import '../status/status.dart';

class ShopCubit extends Cubit<ShopStatus> {
  ShopCubit() : super(ShopInitialStates());

  static ShopCubit get(context) => BlocProvider.of(context);
}
