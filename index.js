
import { Platform, NativeModules } from 'react-native';

const { RNTaptic } = NativeModules;

if (!RNTaptic && Platform.OS === 'web') {
  RNTaptic = require('./web');
}

export default RNTaptic;
