#import "PermissionHandlerPlugin.h"

@implementation PermissionHandlerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel =
          [FlutterMethodChannel methodChannelWithName:@"flutter.baseflow.com/permissions/methods"
                                  binaryMessenger:[registrar messenger]];
    PermissionHandlerPlugin* instance = [[PermissionHandlerPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    result(FlutterMethodNotImplemented);
}
@end
