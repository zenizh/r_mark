require 'action_controller/railtie'

require 'r_mark'

module Dummy
  class Application < Rails::Application
    config.secret_token = 'abcdefghijklmnopqrstuvwxyz0123456789'
    config.session_store :cookie_store, key: '_dummy_session'
    config.eager_load = false
    config.active_support.deprecation = :log
  end
end

Dummy::Application.initialize!

Dummy::Application.routes.draw do
  get '/direct',  to: 'markdowns#direct'
  get '/partial', to: 'markdowns#partial'
end

class ApplicationController < ActionController::Base
end

class MarkdownsController < ApplicationController
  def direct
  end

  def partial
  end
end
