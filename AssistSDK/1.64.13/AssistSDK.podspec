Pod::Spec.new do |s|
s.name              = 'AssistSDK'
s.version           = 'AssistSDK'
s.summary           = 'AssistSDK XCFramework'
s.homepage          = 'https://github.com/cbajapan/fusion-live-assist-sdk'

s.author            = { 'Name' => 'Communication Business Avenue, Inc.' }
s.license           = { :type => 'Commercial', :text => 'Copyright Communication Business Avenue, Inc. Use of this software is subject to the terms and conditions located at https://github.com/cbajapan/fusion-live-assist-sdk/blob/main/License.txt'}

s.source            = { :http => 'https://objc-sdk.s3.us-east-2.amazonaws.com/live_assist_sdk/assist_sdk/AssistSDK-1.64.13.xcframework.zip' }

s.platforms = { :ios => "11.0" }

s.vendored_frameworks = 'AssistSDK.xcframework'
end
