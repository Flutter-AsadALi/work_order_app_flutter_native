package com.example.work_order_app_flutter_native;

import android.Manifest;
import android.os.Bundle;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;


public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "apiChannel";
    private ApiService apiService;

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        apiService = new ApiService(this);

        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler((call, result) -> {
                    if (call.method.equals("getDataFromAPI")) {
                        String apiKey = "LB00759";
                        String apiUrl = "http://40.120.88.200/etrack_mobile_connector/workorder/download_work_order";
                        getDataFromAPI(apiKey, apiUrl, result);
                    } else {
                        result.notImplemented();
                    }
                });
    }

    private void getDataFromAPI(String apiKey, String apiUrl, MethodChannel.Result result) {
        apiService.getDataFromAPI(apiKey, apiUrl, new ApiService.ApiCallback() {
            @Override
            public void onDataReceived(String data) {
                result.success(data);
            }

            @Override
            public void onError(String errorMessage) {
                result.error("API_ERROR", errorMessage, null);
            }
        });
    }


}

