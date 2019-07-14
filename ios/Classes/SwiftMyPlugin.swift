import Flutter
import UIKit

public class SwiftMyPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "my_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftMyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "showToast") {
        var map = call.arguments as? Dictionary<String, String>;
        let message = map?["message"];
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert);
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil);
    }
  }
}
