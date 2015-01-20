require 'kramdown'

module RMark
  module Parsers
    module Kramdown
      def parse(source, options = {})
        ::Kramdown::Document.new(source, options).to_html
      end
    end
  end
end
