
// #if __has_include("RCTBridgeModule.h")
// #import "RCTBridgeModule.h"
// #else
// #import <React/RCTBridgeModule.h>
// #endif

// @interface RNNfcFptSdk : NSObject <RCTBridgeModule>

// @end
  
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
// #import <eID_Shared_v110/eID_Shared_v110.h>
// #import <MKiDNFC/MKiDNFC.h>
// #import <MKiDNFC/MKiDNFC-Swift.h>
// #import <OpenSSL/OpenSSL.h>
 #import <NFCReader/NFC.h>
 #import <NFCReader/NFCReader-Swift.h>

API_AVAILABLE(ios(13.0))
@interface RNNfcFptSdk : RCTEventEmitter <RCTBridgeModule, UpdateReaderSessionMessageDelegte> {
    // MKIDNFCHelper *idNfcFelper;
    NFCManager * id idNfcFelper;
    // PassportReader *passportReader;
}

@end
