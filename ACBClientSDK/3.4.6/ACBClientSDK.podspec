Pod::Spec.new do |s|
s.name              = 'ACBClientSDK'
s.version           = '3.4.6'
s.summary           = 'ACBClientSDK XCFramework'
s.homepage          = 'https://github.com/cbajapan/objc-fcsdk-ios'

s.author            = { 'Name' => 'Communication Business Avenue, Inc.' }
s.license           = { :type => 'Commercial', :text => 'Copyright Communication Business Avenue, Inc. Use of this software is subject to the terms and conditions located at https://github.com/cbajapan/objc-fcsdk-ios/blob/main/License.txt'}

s.source            = { :http => 'https://swift-sdk.s3.us-east-2.amazonaws.com/client_sdk/ACBClientSDK-3.4.6.xcframework.zip' }

s.platforms = { :ios => "11.0" }

s.vendored_frameworks = 'ACBClientSDK.xcframework'
end
