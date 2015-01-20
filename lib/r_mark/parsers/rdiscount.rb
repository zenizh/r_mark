require 'rdiscount'

module RMark
  module Parsers
    module RDiscount
      def parse(source, options = [])
        ::RDiscount.new(source, *options).to_html
      end
    end
  end
end
