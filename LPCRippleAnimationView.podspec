Pod::Spec.new do |s|

  s.name         = "LPCRippleAnimationView"
  s.version      = "1.0.0"
  s.summary      = "LPCRippleAnimationView library"
  s.description  = "LPCRippleAnimationView is a library for displaying a ripple animation"
  s.homepage     = "https://github.com/LPC-Team/lpc-ripple-animation-view-ios"
  s.license      = "MIT"
  s.author             = { "Alaeddine Ouertani" => "ouertani.alaeddine@gmail.com" }
  s.source       = { :git => "https://github.com/LPC-Team/lpc-ripple-animation-view-ios.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "LPCRippleAnimationView/**/*.Swift"
  s.exclude_files = "Classes/Exclude"
  s.platform = :ios, '9.0'

end
