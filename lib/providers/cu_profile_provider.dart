import 'package:cuprofiles/models/cu_profile_model.dart';
import 'package:cuprofiles/services/peer_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cu_profile_provider.freezed.dart';

@freezed
abstract class CUProfileState with _$CUProfileState {
  const factory CUProfileState({
    @Default(true) bool isLoading,
    required CUProfileModel cuProfileModel,
  }) = _CUProfileState;

  // Optional if you want to define custom getters or methods
  const CUProfileState._();
}

class CUProfileNotifier extends StateNotifier<CUProfileState> {
  CUProfileNotifier()
    : super(CUProfileState(cuProfileModel: CUProfileModel(data: []))) {
    loadCuProfile();
  }

  loadCuProfile() async {
    state = state.copyWith(isLoading: true);
    final cuProfileResponse = await PeerService().fetchData();
    final cuProfile = CUProfileModel.fromJson(cuProfileResponse);
    state = state.copyWith(cuProfileModel: cuProfile, isLoading: false);
  }
}

final cuProfileProvider =
    StateNotifierProvider<CUProfileNotifier, CUProfileState>(
      (ref) => CUProfileNotifier(),
    );
