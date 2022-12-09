
#import "RNNfcFptSdk.h"

#import <React/RCTBridge.h>
// #import <eID_Shared_v110/eID_Shared_v110.h>
// #import <MKiDNFC/MKiDNFC.h>
// #import <MKiDNFC/MKiDNFC-Swift.h>
 #import <NFCReader/NFC.h>
 #import <NFCReader/NFCReader-Swift.h>
#import <OpenSSL/OpenSSL.h>

@implementation RNNfcFptSdk

// - (dispatch_queue_t)methodQueue
// {
//     return dispatch_get_main_queue();
// }
- (NSArray<NSString *> *)supportedEvents
{
    return @[
             @"EventDeviceInfo",
             @"EventActiveResult",
             @"EventActiveError",
             @"EventReadCardSuccess",
             @"EventReadCardSod",
             @"EventReadCardError",
             @"EventReadCardAlert"
             ];
}
RCT_EXPORT_MODULE()

// RCT_REMAP_METHOD(scanPassport,
//                  withBase64:(NSString *)base64
//                  withResolver:(RCTPromiseResolveBlock)resolve
//                  withRejecter:(RCTPromiseRejectBlock)reject)
// {
//     NSURL *url = [NSURL URLWithString:base64];
//     NSData *imageData = [NSData dataWithContentsOfURL:url];
//     UIImage *image = [UIImage imageWithData:imageData];
//     [passportReader readIdInfoWithImage:image];
//     resolve(nil);
// }

RCT_REMAP_METHOD(scanPassport,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
    // [passportReader invalidate];
    resolve(nil);
}


@end
  