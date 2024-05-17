workspace 'News.xcworkspace'

install! 'cocoapods', :generate_multiple_pod_projects => true

def local_pod(name, **kwargs)
  kwargs[:path] = "./Modules/#{name}"
  pod name, kwargs
end

target 'News' do
  project 'News.xcodeproj'
  platform :ios, '13.0'
  
  local_pod 'CommonCoreDi'
  local_pod 'CommonCoreNetwork'
  
  local_pod 'BaseUiKit'
  
  # feature modules
  local_pod 'DivkitFeature'
  
  # domain modules
  local_pod 'DivkitDomain'
  
  # data modules
  local_pod 'DivkitData'
end
