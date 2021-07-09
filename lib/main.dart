import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_live_radio/app/scene_app.dart';
import 'package:test_live_radio/data/di/module_data.dart';
import 'package:test_live_radio/domain/di/module_domain.dart';

void main() {

  AssetsAudioPlayer.setupNotificationsOpenAction((notification) {
    return true;
  });

  setupLocator();
  runApp(AppScene());
}

GetIt getIt = GetIt.instance;

void setupLocator() {
  DataModule(getIt);
  DomainModule(getIt);
}