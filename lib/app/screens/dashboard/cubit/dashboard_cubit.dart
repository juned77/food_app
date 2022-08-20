import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(int index) : super(DashboardInitial(index));

  itemTapped(int index) {
    emit(DashboardInitial(index));
  }
}
