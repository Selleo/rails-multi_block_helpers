# rails-multi_block_helpers

Gem allows defining helpers that accept multiple blocks


## Installation

```ruby
# Gemfile

gem 'rails-multi_block_helpers'
```

then `bundle`

## Example

```ruby
# application_helper.rb

def helper_taking_multiple_blocks(&block)
     ActiveSupport::SafeBuffer.new.tap do |html|
      html << content_tag(:div, id: 'block-1') do
        capture_section(:block_one, &block)
      end

      html << content_tag(:div, id: 'block-2') do
        capture_section(:block_two, &block)
      end
    end
end

# show.html.haml

= helper_taking_multiple_blocks do |section|
  - section.block_one do
    %p= "Some content here"
  - section.block_two do
    = link_to "One link", '#'
    = link_to "And another link", '#'
```

