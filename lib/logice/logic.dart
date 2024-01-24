import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/service.dart';

abstract class LogicState {}

abstract class LogicEvent {}

class LogicInitializeState extends LogicState {}

class LogicErrorState extends LogicState {
  final String error;
  LogicErrorState({required this.error});
}

class LogicLoadingState extends LogicState {}

class AddMhsEvent extends LogicEvent {
  final String nama;
  final String nim;
  final String email;
  final String kelas;
  final BuildContext context;
  AddMhsEvent(
      {required this.nama,
      required this.nim,
      required this.email,
      required this.kelas,
      required this.context});
}

class AddMhsLoading extends LogicState {
  bool isLoading;
  AddMhsLoading({required this.isLoading});
}

class LogicalService extends Bloc<LogicEvent, LogicState> {
  final RestAPIService _service;
  LogicalService(this._service) : super(LogicInitializeState()) {
    on<AddMhsEvent>((event, emit) async {
      emit(AddMhsLoading(isLoading: true));
      await _service
          .addMhsService(event.nama, event.nim, event.email, event.kelas)
          .then((value) {
        emit(AddMhsLoading(isLoading: false));
        Future.delayed(const Duration(milliseconds: 500), () {
          Navigator.pop(event.context);
        });
      }).onError((error, stackTrace) {
        emit(AddMhsLoading(isLoading: false));
      });
    });

    // on<ReadUserEvent>((event, emit) async {
    //   emit(LogicLoadingState());
    //   await _service.readUserService().then((value) {
    //     emit(ReadUserState(userModel: value));
    //   }).onError((error, stackTrace) {
    //     emit(LogicErrorState(error: error.toString()));
    //   });
    // });

    // on<UpdateUserEvent>((event, emit) async {
    //   emit(UpdateUserLoading(isLoading: true));
    //   final Map<String, dynamic> data = {
    //     "id": event.id,
    //     "username": event.username,
    //     "email": event.email
    //   };
    //   await _service.updateUserService(data).then((value) {
    //     emit(UpdateUserLoading(isLoading: false));
    //     snackBar(event.context, "User has been Update");

    //     Future.delayed(const Duration(milliseconds: 500), () {
    //       Navigator.pop(event.context);
    //     });
    //   }).onError((error, stackTrace) {
    //     emit(UpdateUserLoading(isLoading: false));
    //   });
    // });

    // on<DeleteUserEvent>((event, emit) async {
    //   emit(DeleteUserLoading(isLoading: true));
    //   await _service.deleteUserSerice(event.id).then((value) {
    //     emit(DeleteUserLoading(isLoading: false));
    //   }).onError((error, stackTrace) {
    //     emit(DeleteUserLoading(isLoading: false));
    //   });
    // });
  }
}
