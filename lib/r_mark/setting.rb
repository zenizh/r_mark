require 'singleton'

module RMark
  class Setting
    include Singleton

    attr_accessor :parser, :options

    def initialize
      defaults.each { |k, v| instance_variable_set("@#{k}", v) }
    end

    def setup
      yield self
    end

    private

    def defaults
      @defaults ||= {
        parser: :Redcarpet,
        options: {}
      }
    end
  end
end
