require "rt/version"
require "rt/transformer"

module Rt
  def self.transform *args
    Transformer.instance.call *args
  end
end
