require 'redcarpet'

module RMark
  module Parsers
    module Redcarpet
      def parse(source, options)
        ::Redcarpet::Markdown.new(::Redcarpet::Render::HTML, options).render(source)
      end
    end
  end
end
