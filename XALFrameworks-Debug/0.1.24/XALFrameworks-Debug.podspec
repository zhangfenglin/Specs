
Pod::Spec.new do |s|
  s.name             = 'XALFrameworks-Debug'
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
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSLibraryAdapter.framework"
      ss.dependency 'XALFrameworks-Debug/APSActivate'
      ss.dependency 'XALFrameworks-Debug/APSCloud'
      ss.dependency 'XALFrameworks-Debug/APSSupport3rd'
      ss.dependency 'XALFrameworks-Debug/APSAlex'
  end
  
  s.subspec "APSActivate" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSActivate.framework"
      ss.dependency 'XALFrameworks-Debug/APSUtilities'
      ss.dependency 'XALFrameworks-Debug/APSZeus'
      ss.dependency 'XALFrameworks-Debug/APSMiddleware'
      ss.dependency 'XALFrameworks-Debug/APSSdkService'
      ss.dependency 'XALFrameworks-Debug/APSAdjust'
      
      ss.dependency 'FlatBuffers-ObjC', '0.0.2'
      
  end
  
  s.subspec "APSCloud" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSCloud.framework"
      ss.dependency 'XALFrameworks-Debug/APSZeus'
      ss.dependency 'XALFrameworks-Debug/APSMiddleware'
      ss.dependency 'XALFrameworks-Debug/APSSdkService'
      ss.dependency 'XALFrameworks-Debug/APSUtilities'
      
      ss.dependency 'FMDB', '2.7.5'
      ss.dependency 'FlatBuffers-ObjC', '0.0.2'
  end
  
  s.subspec "APSAlex" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSAlex.framework"
      ss.dependency 'XALFrameworks-Debug/APSUtilities'
      ss.dependency 'XALFrameworks-Debug/APSZeus'
      ss.dependency 'XALFrameworks-Debug/APSMiddleware'
      ss.dependency 'XALFrameworks-Debug/APSSdkService'
      
      ss.dependency 'FlatBuffers-ObjC', '0.0.2'
      ss.dependency 'FMDB', '2.7.5'
      
  end
  
  s.subspec "APSSupport3rd" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSSupport3rd.framework"
      ss.dependency 'XALFrameworks-Debug/du'
      ss.dependency 'Adjust', '4.18.0'
      ss.dependency 'Flurry-iOS-SDK', '9.3.1'
      
  end
  
  
  s.subspec "APSMiddleware" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSMiddleware.framework"
  end
  
  s.subspec "APSSdkService" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSSdkService.framework"
  end
  
  s.subspec "APSZeus" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSZeus.framework"
      ss.dependency 'XALFrameworks-Debug/APSLogServer'
      
      ss.dependency 'AFNetworking', '3.2.1'
  end
  
  s.subspec "APSAdjust" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSAdjust.framework"
      
      ss.dependency 'Adjust', '4.18.0'
  end
  
  s.subspec "APSLogServer" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSLogServer.framework"
      
      ss.dependency 'GCDWebServer', '3.5.3'
  end
  
  s.subspec "APSUtilities" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSUtilities.framework"
      
      ss.dependency 'Reachability', '3.2'
      ss.dependency 'SAMKeychain', '1.5.3'
  end
  
  s.subspec "APSRouter" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSRouter.framework"
  end
  
  s.subspec "APSFcmPush" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/APSFcmPush.framework"
      
      ss.dependency 'XALFrameworks-Debug/APSAlex'
      ss.dependency 'Firebase/Core' ,'~> 6.11.0'
      ss.dependency 'Firebase/Messaging' ,'~> 6.11.0'
      ss.dependency 'AFNetworking', '~> 3.2.1'
  end
  
  s.subspec "du" do |ss|
      ss.ios.vendored_frameworks = "Debug/Frameworks/du.framework"
  end
  
  #s.source_files = 'XALFrameworks/Classes/**/*'
  
  s.pod_target_xcconfig = {'ENABLE_BITCODE' => 'NO', 'VALID_ARCHS[sdk=iphonesimulator*]' => ''}
end
