import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/user_model.dart';

part 'badge_state.dart';

class BadgeCubit extends Cubit<BadgeState> {
  BadgeCubit() : super(const BadgeInitial());
}
