#import "MyPlugin.h"
#import <my_plugin/my_plugin-Swift.h>

@implementation MyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMyPlugin registerWithRegistrar:registrar];
}
@end
