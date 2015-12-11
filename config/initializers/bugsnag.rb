if Object.const_defined?(:Bugsnag)
  Bugsnag.configure do |config|
    config.params_filters += Blinkers::SENSITIVE_KEYS
  end
end
