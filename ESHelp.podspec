Pod::Spec.new do |s|

s.name         = 'ESHelp'
s.version      = ‘0.3.0’
s.summary      = 'ESHelp is tools'
s.homepage     = 'https://github.com/quanzhizu2015/ESHelp'
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { 'quanzhizu2015' => 'quanzhizu2005@126.com' }

s.platform     = :ios, '7.0'
s.source       = { :git => 'https://github.com/cezres/ESCategories.git', :tag => s.version }
s.source_files = "ESHelp/*.{h,m}"
s.requires_arc = true


end