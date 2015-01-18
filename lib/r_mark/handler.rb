module RMark
  class Handler
    def call(template)
      begin
        extend "::RMark::Parsers::#{setting.parser}".constantize
      rescue NameError
        raise ConfigurationError, 'Parser supports only :Redcarpet, :RDiscount, and :Kramdown'
      end

      parse(template.source, setting.options).inspect + '.html_safe'
    end

    private

    def setting
      RMark.setting
    end
  end
end
