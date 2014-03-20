require "lazy_image_tag/helpers/image_helper"

module LazyImageTag
  module HelperGenerator

    def inject_helper
      ActionView::Base.send :include, ImageHelper
      config.lazy_image_tag.use_default ? override : inject
    end

    def override
      ActionView::Base.class_eval{ alias_method_chain :image_tag, :lazy }
    end

    def inject
      ActionView::Base.class_eval{ alias_method :lazy_image_tag, :image_tag_with_lazy; alias_method :image_tag_without_lazy, :image_tag }
    end

  end
end