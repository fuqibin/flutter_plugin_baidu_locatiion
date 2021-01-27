#import "FlutterPluginBaiduLocatiionPlugin.h"

@implementation FlutterPluginBaiduLocatiionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_plugin_baidu_locatiion"
            binaryMessenger:[registrar messenger]];
  FlutterPluginBaiduLocatiionPlugin* instance = [[FlutterPluginBaiduLocatiionPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
