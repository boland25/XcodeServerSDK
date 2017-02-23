
use_frameworks!

def utils
    pod 'BuildaUtils', '~> 0.4.0'
end

def tests
    pod 'DVR', :git => "git@github.com:boland25/DVR.git", :branch => "swift-3"
#   pod 'Nimble', '~> 6.0.0'
    pod 'Nimble', :git => "https://github.com/Quick/Nimble.git", :commit => "b9256b0bdecc4ef1f659b7663dcd3aab6f43fb5f"
end

target 'XcodeServerSDK' do
    utils
end

target 'XcodeServerSDKTests' do
    utils
    tests
end
