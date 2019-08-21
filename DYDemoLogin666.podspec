Pod::Spec.new do |s|
  s.name             = 'DYDemoLogin666'
  s.version          = '0.0.1'
  s.summary          = 'A short description of DYDemoLogin666.'

  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC

  s.homepage         = 'https://github.com/liyunxin/DYDemoLogin666'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liyunxin' => '447674668@qq.com' }
  s.source           = { :git => 'https://github.com/liyunxin/DYDemoLogin666.git', :tag => s.version.to_s }

  s.platform   = :ios, "10.0"
  s.frameworks = 'UIKit'

  s.dependency "DYDemoTools"
  
  s.subspec '0_Base' do |sb|
    sb.source_files = "DYDemoLogin666/Base/**/*.{h,m}"
    sb.resource_bundles = {
      'DYDemoLogin666' => ['DYDemoLogin666/Base/*.xcassets']
    }
  end
  
  s.subspec '1_Tools' do |st|
    st.source_files = "DYDemoLogin666/Tools/**/*.{h,m}"
  end
  
  s.subspec '2_Data' do |st|
    st.source_files = "DYDemoLogin666/Data/**/*.{h,m}"
  end
  
  s.subspec '3_Controller' do |sv|
    sv.source_files = "DYDemoLogin666/Controller/**/*.{h,m}"
  end
  
end
