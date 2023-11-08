# AssistSDK


## Swift Package Manager ##
 
    1. In your Xcode Project, select File > Swift Packages > Add Package Dependency.
    2. Follow the prompts using the URL for this repository
    3. Choose which version you would like to checkout(i.e. 1.64.6)

## CocoaPods ##

In order to use our CocoaPod, please follow the following instructions.

1. Navigate to your project 
2. Run `pod init`
3. Run `open -a Xcode Podfile`
4. Edit the Podfile as indicated below

```
source 'https://github.com/cbajapan/fusion-live-assist-sdk'

target 'LiveAssistDemo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for LiveAssistDemo
pod 'ACBClientSDK', '~> 3.4.6'
pod 'WebRTC', '~> 90.0.0'
pod 'AssistSDK', '~> 1.64.13'
end
```
5. Close the Podfile
6. Run `pod install`
7. You will now use the **.xcworkspace** instead of **.xcodeproj** as a project source.

**NOTE:** If you have trouble installing or updating the CocoaPod, you may have an issue with the local pod repo.

*If that is the case, please try running the following Pod Commands*

```
sudo rm -rf ~/.cocoapods/repos/cbajapan-fusion-live-assist-sdk
pod setup
pod install
```

Afterwards, you can run the install or update command again

```
pod install
```

### Note
Starting in LASDK version 1.64.10, we’ve switched to a dynamic framework, the `import` mechanism needs to change. Please import the SDK accordingly.

```Objective-C
@import AssistSDK;
``` 
