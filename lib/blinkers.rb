require "blinkers/params"

module Blinkers
  SENSITIVE_KEYS = [/password/, /card_number/, /cvc/, /mynumber/]

  ActiveSupport::on_load(:action_controller) do
    include Blinkers::Params
  end
end
