
Pod::Spec.new do |s|
  s.name             = 'XALFrameworks'
  s.version          = '0.1.24'
  s.summary          = 'XALFrameworks'

  s.description      = <<-DESC
    XALFrameworks.
                       DESC

  s.homepage         = 'https://github.com/apusapps/xal-frameworks-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangfenglin' => 'zhangfenglin@apusapps.com' }
  s.source           = { :git => 'https://github.com/apusapps/xal-frameworks-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'
  
  s.subspec "APSLibraryAdapter" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSLibraryAdapter.framework"
      ss.dependency 'XALFrameworks/APSActivate'
      ss.dependency 'XALFrameworks/APSCloud'
      ss.dependency 'XALFrameworks/APSSupport3rd'
      ss.dependency 'XALFrameworks/APSAlex'
  end
  
  s.subspec "APSActivate" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSActivate.framework"
      ss.dependency 'XALFrameworks/APSUtilities'
      ss.dependency 'XALFrameworks/APSZeus'
      ss.dependency 'XALFrameworks/APSMiddleware'
      ss.dependency 'XALFrameworks/APSSdkService'
      ss.dependency 'XALFrameworks/APSAdjust'
      
      ss.dependency 'FlatBuffers-ObjC', '0.0.2'
      
  end
  
  s.subspec "APSCloud" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSCloud.framework"
      ss.dependency 'XALFrameworks/APSZeus'
      ss.dependency 'XALFrameworks/APSMiddleware'
      ss.dependency 'XALFrameworks/APSSdkService'
      ss.dependency 'XALFrameworks/APSUtilities'
      
      ss.dependency 'FMDB', '2.7.5'
      ss.dependency 'FlatBuffers-ObjC', '0.0.2'
  end
  
  s.subspec "APSAlex" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSAlex.framework"
      ss.dependency 'XALFrameworks/APSUtilities'
      ss.dependency 'XALFrameworks/APSZeus'
      ss.dependency 'XALFrameworks/APSMiddleware'
      ss.dependency 'XALFrameworks/APSSdkService'
      
      ss.dependency 'FlatBuffers-ObjC', '0.0.2'
      ss.dependency 'FMDB', '2.7.5'
      
  end
  
  s.subspec "APSSupport3rd" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSSupport3rd.framework"
      ss.dependency 'XALFrameworks/du'
      ss.dependency 'Adjust', '4.18.0'
      ss.dependency 'Flurry-iOS-SDK', '9.3.1'
      
  end
  
  
  s.subspec "APSMiddleware" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSMiddleware.framework"
  end
  
  s.subspec "APSSdkService" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSSdkService.framework"
  end
  
  s.subspec "APSZeus" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSZeus.framework"
      ss.dependency 'XALFrameworks/APSLogServer'
      
      ss.dependency 'AFNetworking', '3.2.1'
  end
  
  s.subspec "APSAdjust" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSAdjust.framework"
      
      ss.dependency 'Adjust', '4.18.0'
  end
  
  s.subspec "APSLogServer" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSLogServer.framework"
      
      ss.dependency 'GCDWebServer', '3.5.3'
  end
  
  s.subspec "APSUtilities" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSUtilities.framework"
      
      ss.dependency 'Reachability', '3.2'
      ss.dependency 'SAMKeychain', '1.5.3'
  end
  
  s.subspec "APSRouter" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSRouter.framework"
  end
  
  s.subspec "APSFcmPush" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/APSFcmPush.framework"
      
      ss.dependency 'XALFrameworks/APSAlex' 
      ss.dependency 'Firebase/Core' ,'~> 6.11.0'
      ss.dependency 'Firebase/Messaging' ,'~> 6.11.0'
      ss.dependency 'AFNetworking', '~> 3.2.1'
  end
  
  s.subspec "du" do |ss|
      ss.ios.vendored_frameworks = "Release/Frameworks/du.framework"
  end
  
  #s.source_files = 'XALFrameworks/Classes/**/*'
  
  s.pod_target_xcconfig = {'ENABLE_BITCODE' => 'NO', 'VALID_ARCHS[sdk=iphonesimulator*]' => ''}
end
