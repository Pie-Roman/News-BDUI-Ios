Pod::Spec.new do |spec|
    spec.name                     = 'DivkitData'
    spec.version                  = '1.0'
    spec.homepage                 = 'https://github.com/Pie-Roman/News-BDUI-Ios'
    spec.source                   = { :git => "local", :tag => "#{spec.version}" }
    spec.authors                  = ''
    spec.license                  = ''
    spec.summary                  = 'Divkit data module'
    spec.ios.deployment_target = '12.0'
    spec.public_header_files = 'Sources/**/*.h'
    spec.source_files            = [
      'Sources/**/*.{swift,h,m}'
    ]

    spec.dependency 'CommonCoreDi'
    spec.dependency 'CommonCoreNetwork'
    spec.dependency 'DivkitDomain'
end
