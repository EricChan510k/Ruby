# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pushmeup"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nicos Karalis"]
  s.date = "2012-11-14"
  s.description = "                        This gem is a wrapper to send push notifications to devices.\n                        Currently it only sends to Android or iOS devices, but more platforms will be added soon.\n\n                        With APNS (Apple Push Notifications Service) you can send push notifications to Apple devices.\n                        With GCM (Google Cloud Messaging) you can send push notifications to Android devices.\n"
  s.email = ["nicoskaralis@me.com"]
  s.homepage = "https://github.com/NicosKaralis/pushmeup"
  s.require_paths = ["lib"]
  s.rubyforge_project = "pushmeup"
  s.rubygems_version = "2.0.14"
  s.summary = "Send push notifications to Apple devices through ANPS and Android devices through GCM"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
