import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = HomeInitial;

  const factory HomeEvent.started() = HomeStarted;

  const factory HomeEvent.doGetAllReports() = DoGetAllReports;

  const factory HomeEvent.showCreateReportBottomSheet({
    required final BuildContext context,
  }) = HomeShowCreateReportBottomSheet;

  const factory HomeEvent.setReportTitle({
    required String value,
  }) = HomeSetReportTitle;

  const factory HomeEvent.removeOneReport({
    required BuildContext context,
    required final ReportModel report,
  }) = HomeRemoveOneReport;
}
