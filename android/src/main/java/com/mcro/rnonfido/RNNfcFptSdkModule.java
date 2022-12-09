
package com.mcro.rnonfido;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNNfcFptSdkModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNNfcFptSdkModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNNfcFptSdk";
  }
}