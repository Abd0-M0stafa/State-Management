part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

class CounterInitial extends CounterState {}

class CounterChanged extends CounterState {}
