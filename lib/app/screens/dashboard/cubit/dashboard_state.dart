part of 'dashboard_cubit.dart';

abstract class DashboardState extends Equatable {}

class DashboardInitial extends DashboardState {
  DashboardInitial(this.initialIndex);

  final int initialIndex;

  @override
  List<Object?> get props => [initialIndex];

  DashboardInitial copyWith({int? initialIndex}) {
    return DashboardInitial(initialIndex ?? this.initialIndex);
  }
}
