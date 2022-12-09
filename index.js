

'use strict';
import { NativeEventEmitter, NativeModules, Platform } from 'react-native';

// const { RNNfcFptSdk } = NativeModules;



const LINKING_ERROR =
    `The package 'react-native-eid-sdk' doesn't seem to be linked. Make sure: \n\n` +
    Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
    '- You rebuilt the app after installing the package\n' +
    '- You are not using Expo managed workflow\n';

const NFCFPTSdk = NativeModules.RNNfcFptSdk
    ? NativeModules.RNNfcFptSdk
    : new Proxy(
        {},
        {
            get() {
                throw new Error(LINKING_ERROR);
            },
        }
    );
class RNNfcFptSdk {
    //open lib
    scanPassport = () => {
        // if (Platform.OS === 'ios') {
        // }
        // return Promise.resolve();
        return NativeModules.RNNfcFptSdk.scanPassport();
    };

}

export default new RNNfcFptSdk();

// export default RNNfcFptSdk;
