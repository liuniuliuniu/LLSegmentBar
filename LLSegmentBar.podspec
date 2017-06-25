
Pod::Spec.new do |s|
  s.name             = 'LLSegmentBar'
  s.version          = '0.0.1'
  s.summary          = 'LLSegmentBar'
  s.description      = <<-DESC
LLSegmentBar tag Label
                       DESC
  s.homepage         = 'https://github.com/liuniuliuniu/LLSegmentBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '416997919@qq.com' => '416997919@qq.com' }
  s.source           = { :git => 'https://github.com/liuniuliuniu/LLSegmentBar.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'LLSegmentBar/Classes/**/*'
  s.requires_arc = true

end
