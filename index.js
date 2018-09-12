
import { Platform, NativeModules } from 'react-native';

let { RNTaptic } = NativeModules;

if (!RNTaptic && Platform.OS === 'web') {
  RNTaptic = require('./web');
}

export default RNTaptic;
