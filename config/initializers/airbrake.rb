if Object.const_defined?(:Airbrake)
  Airbrake.configure do |config|
    config.params_filters << Blinkers::SENSITIVE_KEYS
  end
end