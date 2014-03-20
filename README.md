# LazyImageTag

Jquery lazy image loading gem.

## Installation

Add this line to your application's Gemfile:

    gem 'lazy_image_tag'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lazy_image_tag

## Usage
  with "config.lazy_image_tag.use_default = true" configuration your all existing image_tag's will be loaded lazyly
  with "config.lazy_image_tag.use_default = false" configuration you can use lazy loading with lazy_image_tag helper

## Configuration
In your application.rb file or environment(s) initializer file you can set configurations easly like the above

    config.lazy_image_tag.use_default = true # with this configuration image_tag helper becomes lazy_image_tag helper

    .
    .
    .
    
    config.lazy_image_tag.js_disabled = :noscript # with this configuration users will see normal image tag if their browser does not support javascript or disabled manually

## Valid Config Options

    :use_default => [false, true]
    :js_disabled => [:none, :link, :noscript]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
