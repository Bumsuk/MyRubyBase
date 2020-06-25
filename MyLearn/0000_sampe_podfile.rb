#!/usr/bin/ruby

# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

workspace 'Ziccha.xcworkspace'

target 'Ziccha' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!
  # Rx
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'RxViewController'
  pod 'RxDataSources'
  pod 'Moya/RxSwift'
  pod 'RxViewBinder'
  pod 'RxKeyboard'
  pod 'RxOptional'

  # Network
  pod 'Moya'
  pod 'Alamofire'

  # Ui
  pod "Sheeeeeeeeet"
  pod 'UITextView+Placeholder'
  pod 'ManualLayout'
  pod 'Toaster'
  # Firebase
  #  source 'git@github.com:CocoaPods/Specs.git'
  #  source 'git@github.com:crashlytics/SpecsEAP.git'

  pod 'Firebase/RemoteConfig'
  pod 'Firebase/Analytics'
  #  pod 'Fabric', '~> 1.7.0-beta'
  #  pod 'Crashlytics', '~> 3.9.0-beta'

  # Misc.
  pod 'Then'
  pod 'SwiftyColor'
  pod 'SwiftCop'
  pod 'SwiftLint'
  pod 'SwiftyColor'
  pod 'SwiftGen'
  pod 'GoogleSignIn'
  pod 'SwiftyBeaver'

  # Facebook
  pod 'FacebookCore'
  pod 'FacebookLogin'
  pod 'FBSDKLoginKit'
  pod 'FacebookShare'
  pod 'IKEventSource'

  # Naver
  pod 'naveridlogin-sdk-ios'

  target 'OneSignalNotificationServiceExtension' do
    pod 'OneSignal'
  end

  target 'ZicchaChat' do
    project 'ZicchaChat/ZicchaChat.xcodeproj'
    pod 'IKEventSource'
  end

  target 'ZicchaShared' do
    project 'ZicchaShared/ZicchaShared.xcodeproj'
  end

  # ============== testing ===============
  def testing_pods
    pod 'RxBlocking'
    pod 'RxTest'
    pod 'Stubber'
    pod 'Cuckoo'
  end
  target 'ZicchaSharedTests' do
    project 'ZicchaShared/ZicchaShared.xcodeproj'
    testing_pods
  end

  target 'ZicchaTesting' do
    project 'ZicchaTesting/ZicchaTesting.xcodeproj'
    testing_pods
  end

  target 'ZicchaChatExample' do
    project 'ZicchaChatExample/ZicchaChatExample.xcodeproj'
  end

  target 'ZicchaChatTests' do
    inherit! :search_paths
    project 'ZicchaChat/ZicchaChat.xcodeproj'
    testing_pods

  end

  target 'ZicchaChatExampleTests' do
    project 'ZicchaChatExample/ZicchaChatExample.xcodeproj'
    inherit! :search_paths
    testing_pods
    pod 'RxExpect'
  end

  target 'ZicchaTests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods
  end
  # ============== testing ===============

  swift_4_2_targets = [ 'ObjectMapper', 'PagingMenuController', "SwiftCop" ]

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['APPLICATION_EXTENSION_API_ONLY'] = 'NO'
      end
    end
    print "Setting the default SWIFT_VERSION to 5.0\n"
    installer.pods_project.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.2'
    end

    installer.pods_project.targets.each do |target|
      if swift_4_2_targets.include? "#{target}"
        print "Setting #{target}'s SWIFT_VERSION to 4.2\n"
        target.build_configurations.each do |config|
          config.build_settings['SWIFT_VERSION'] = '4.2'
        end
      else
        print "Setting #{target}'s SWIFT_VERSION to Undefined (Xcode will automatically resolve)\n"
        target.build_configurations.each do |config|
          config.build_settings.delete('SWIFT_VERSION')
          config.build_settings['CLANG_ENABLE_CODE_COVERAGE'] = 'NO'
        end
      end
    end
  end
end
