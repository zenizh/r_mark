# RMark

[![Build Status](https://travis-ci.org/kami30k/r_mark.svg)](https://travis-ci.org/kami30k/r_mark)
[![Gem Version](https://badge.fury.io/rb/r_mark.svg)](http://badge.fury.io/rb/r_mark)

RMark provides that Rails application uses Markdown in views and partials.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'r_mark'
```

And then execute:

```
$ bundle
```

And also you should install Markdown parser, such as [redcarpet](https://github.com/vmg/redcarpet), [rdiscount](https://github.com/davidfstr/rdiscount), or [kramdown](https://github.com/gettalong/kramdown) as you like.

## Usage

All one need to do is add to Gemfile and `bundle`.
Then you can use `.md` view in `app/views`.
There are two ways to render markdown.

### 1. Render direct

In `app/views/pages/direct.md`:

```md
# Direct

- foo
- bar
- baz
```

### 2. Render via partial

In `app/views/pages/partial.erb`:

```erb
<%= render 'pages/partial' %>
```

And in `app/views/pages/_partial.md`:

```md
# Partial

- foo
- bar
- baz
```

## Customize

RMark uses [redcarpet](https://github.com/vmg/redcarpet) as a default Markdown parser.
If you change it as you like, create `config/initializers/r_mark.rb`:

```ruby
RMark.setup do |config|
  config.parser = :RDiscount
end
```

Parser supports `:Redcarpet`, `:RDiscount`, and `:Kramdown`.

And also you can add rendering options.
Following code is an example of `r_mark.rb`:

```ruby
RMark.setup do |config|
  # config.parser = :Redcarpet
  #
  # config.options = {
  #   autolink: true
  # }

  # config.parser = :RDiscount
  #
  # config.options = [
  #   :autolink
  # ]

  # config.parser = :Kramdown
  #
  # config.options = {
  #   auto_ids: false
  # }
end
```

When you add options, see also:

- [vmg/redcarpet](https://github.com/vmg/redcarpet)
- [Class: RDiscount — Documentation for davidfstr/rdiscount (master)](http://www.rubydoc.info/github/davidfstr/rdiscount/master/RDiscount)
- [Options | kramdown](http://kramdown.gettalong.org/options.html)

## Contributing

1. Fork it ( https://github.com/kami30k/r_mark/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
