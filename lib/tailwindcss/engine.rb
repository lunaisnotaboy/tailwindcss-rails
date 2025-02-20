require "rails"

module Tailwindcss
  class Engine < ::Rails::Engine
    initializer "tailwindcss.disable_generator_stylesheets" do
      Rails.application.config.generators.stylesheets = false
    end

    config.app_generators do |g|
      g.template_engine :tailwindcss
    end
  end
end
