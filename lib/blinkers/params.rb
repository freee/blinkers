module Blinkers
  module Params
    def self.included(klass)
      klass.include InstanceMethods
    end

    module InstanceMethods
      def secure_params(*sensitive_keys)
        query = params.clone

        filter = ActionDispatch::Http::ParameterFilter.new(
          Rails.application.config.filter_parameters + sensitive_keys
        )

        filter.filter(query)
      end
    end
  end
end
