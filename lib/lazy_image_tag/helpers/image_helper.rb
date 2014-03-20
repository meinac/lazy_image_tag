module LazyImageTag
  module ImageHelper

    def image_tag_with_lazy(source, options={})
      Rails.application.config.lazy_image_tag.js_disabled == :link ? link_helper(source, options) : image_helper(source, options)
    end

    def container_options(options)
      container_options = {}
      container_options[:class] = "lazy-image-container"
      container_options
    end

    def link_helper(source, options)
      options[:class].blank? ? options[:class] = "lazy-image-link" : options[:class] << " lazy-image-link"
      options[:data] ||= {}
      options[:data][:width] = options[:width]
      options[:data][:height] = options[:height]
      options[:data][:id] = options[:id]
      options[:alt] = options[:width] = options[:height] = options[:id] = nil
      content_tag(:div, link_to(options[:alt], path_to_image(source), options), container_options(options))
    end

    def image_helper(source, options)
      custom_opts = options.dup
      custom_opts[:data] ||= {}
      custom_opts[:data][:original] = source = path_to_image(source)
      custom_opts[:class].blank? ? custom_opts[:class] = "lazy" : custom_opts[:class] << " lazy"
      custom_source = path_to_image("blank.png")
      content = image_tag(custom_source, custom_opts)
      content << content_tag(:noscript, image_tag(source, options)) if Rails.application.config.lazy_image_tag.js_disabled == :noscript
      content_tag(:div, content, container_options(options))
    end

  end
end
