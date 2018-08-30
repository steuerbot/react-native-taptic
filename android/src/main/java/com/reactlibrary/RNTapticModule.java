
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import java.util.HashMap;
import java.util.Map;


public class RNTapticModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNTapticModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNTaptic";
  }

  @Override
  public Map<String, Object> getConstants() {
    final Map<String, Object> constants = new HashMap<>();
    constants.put("light", "");
    constants.put("medium", "");
    constants.put("heavy", "");
    constants.put("success", "");
    constants.put("warning", "");
    constants.put("error", "");
    return constants;
  }

  @ReactMethod
  public void impact(String impactType) {
  }

  @ReactMethod
  public void selection() {
  }

  @ReactMethod
  public void notification(String notificationType) {
  }
}