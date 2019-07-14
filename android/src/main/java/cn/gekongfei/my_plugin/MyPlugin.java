package cn.gekongfei.my_plugin;

import android.widget.Toast;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** MyPlugin */
public class MyPlugin implements MethodCallHandler {
  Registrar registrar;

  public MyPlugin(Registrar registrar) {
    this.registrar = registrar;
  }

  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "my_plugin");
    channel.setMethodCallHandler(new MyPlugin(registrar));
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("showToast")) {
      String message = call.argument("message");
      Toast.makeText(registrar.context(), message, Toast.LENGTH_SHORT).show();
    } else {
      result.notImplemented();
    }
  }
}
