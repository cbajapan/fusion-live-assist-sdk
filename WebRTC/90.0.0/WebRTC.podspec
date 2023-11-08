Pod::Spec.new do |s|
s.name              = 'WebRTC'
s.version           = '90.0.0'
s.summary           = 'WebRTC XCFramework'
s.homepage          = 'https://github.com/cbajapan/objc-fcsdk-ios'

s.author            = { 'Name' => 'Communication Business Avenue, Inc.' }
s.license           = { :type => 'Commercial', :text => 'Copyright Communication Business Avenue, Inc. Use of this software is subject to the terms and conditions located at https://github.com/cbajapan/objc-fcsdk-ios/blob/main/Open-Source%20Licenses/WebRTC.txt' }

s.source            = { :http => 'https://swift-sdk.s3.us-east-2.amazonaws.com/real_time/CBARealTime-m90-ios12-1.0.3.xcframework.zip' }

s.platforms = { :ios => "11.0" }

s.vendored_frameworks = 'WebRTC.xcframework'
end