package com.example.widgetstesting;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

import com.yandex.mapkit.MapKitFactory;

public class MainActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        MapKitFactory.setApiKey("77b1f43c-d61e-4d60-9c87-f2b00df781f5");
        super.configureFlutterEngine(flutterEngine);
    }
}