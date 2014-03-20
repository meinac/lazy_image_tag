module LazyImageTag
  class Engine < Rails::Engine

    include HelperGenerator
    config.lazy_image_tag = ActiveSupport::OrderedOptions.new

    initializer "initialize config variables" do
      valid_configs[:use_default].include?(config.lazy_image_tag.use_default) || config.lazy_image_tag.use_default = false
      valid_configs[:js_disabled].include?(config.lazy_image_tag.js_disabled) || config.lazy_image_tag.js_disabled = :none
    end

    initializer "injects helper method into ActionView::Base" do
      inject_helper
    end

    def valid_configs
      {:use_default => [false, true], :js_disabled => [:none, :link, :noscript]}
    end
    
  end
end