require 'r_mark/version'
require 'r_mark/railtie' if defined?(Rails)

module RMark
  class ConfigurationError < StandardError; end

  autoload :Handler, 'r_mark/handler'
  autoload :Setting, 'r_mark/setting'

  module Parsers
    autoload :Redcarpet, 'r_mark/parsers/redcarpet'
    autoload :RDiscount, 'r_mark/parsers/rdiscount'
    autoload :Kramdown,  'r_mark/parsers/kramdown'
  end

  class << self
    def setup(&block)
      Setting.instance.setup(&block)
    end

    def setting
      Setting.instance
    end
  end
end
