require 'rails'

module RMark
  class Railtie < Rails::Railtie
    initializer 'r_mark' do |app|
      ActionView::Template.register_template_handler :md, RMark::Handler.new
    end
  end
end
