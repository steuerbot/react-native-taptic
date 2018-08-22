
# react-native-taptic

## Getting started

`$ npm install react-native-taptic --save`

### Mostly automatic installation

`$ react-native link react-native-taptic`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-taptic` and add `RNTaptic.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTaptic.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNTapticPackage;` to the imports at the top of the file
  - Add `new RNTapticPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-taptic'
  	project(':react-native-taptic').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-taptic/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-taptic')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNTaptic.sln` in `node_modules/react-native-taptic/windows/RNTaptic.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Taptic.RNTaptic;` to the usings at the top of the file
  - Add `new RNTapticPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNTaptic from 'react-native-taptic';

// TODO: What to do with the module?
RNTaptic;
```
  