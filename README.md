# LazyImageTag

Jquery lazy image loading gem.

## Installation

Add this line to your application's Gemfile:

    gem 'lazy_image_tag'

And then execute:

    $ bundle

Please dont forget to include js and css files into your manifest files

    //= require lazy-image-tag/lazy-image-tag.js

    *= require lazy-image-tag/lazy-image-tag.css

Or install it yourself as:

    $ gem install lazy_image_tag

## Usage
  with "config.lazy_image_tag.use_default = true" configuration your all existing image_tag's will be loaded lazyly

    image_tag("image src", :alt => "image alt", :width => "img width", :height => "img heigth")


  with "config.lazy_image_tag.use_default = false" configuration you can use lazy loading with lazy_image_tag helper an you can still use rails's existing image_tag helper to render images normally

    lazy_image_tag("image src", :alt => "image alt", :width => "img width", :height => "img heigth")

## Configuration
In your application.rb file or environment(s) initializer file you can set configurations easly like the above

    # with this configuration image_tag helper becomes lazy_image_tag helper
    config.lazy_image_tag.use_default = true
    
    # with this configuration users will see normal image tag if their browser does not support javascript
    config.lazy_image_tag.js_disabled = :noscript

    # with this configuration you can change loading animation easly
    config.lazy_image_tag.loading_img = "loading.gif"

## Valid Config Options

    :use_default => [false, true]
    :js_disabled => [:none, :link, :noscript]
    :loading_img => "valid_image_path"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
