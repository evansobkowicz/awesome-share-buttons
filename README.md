# Awesome Share Buttons

This gem makes it easy to add Font-Awesome social share buttons to your rails app.

# Sites list

* Facebook
* Twitter
* Google+
* Delicious
* Tumblr
* Pinterest
* Email

## Screenshot

coming soon

## Install

In your `Gemfile`:

```ruby
gem 'awesome-share-buttons', github: 'evansobkowicz/awesome-share-buttons'
```

And install it:

```bash
$ bundle install
$ rails generate awesome_share_buttons:install
```

## Configure

You can config `config/initializes/awesome_share_buttons.rb` to choose which site do you want to use:

```ruby
AwesomeShareButtons.configure do |config|
  config.allow_sites = %w(twitter facebook google_plus tumblr pinterest email)
end
```

## Usage

You need add require lines to your css and js files in your app assets files:

`app/assets/javascripts/application.coffee`

```
#= require awesome-share-buttons
```

`app/assets/stylesheets/application.scss`

```
*= require awesome-share-buttons
```

Then you can use `awesome_share_buttons` method helper in views, for example `app/views/posts/show.html.erb`

```erb
<%= awesome_share_buttons(@post.title) %>
```

And you can custom rel attribute:

```erb
<%= awesome_share_buttons(@post.title, :rel => "twipsy") %>
```

You can also specify the URL that it links to:

```erb
<%= awesome_share_buttons(@post.title, :url => "http://myapp.com/foo/bar") %>
```

For the Tumblr there are an extra settings, prefixed with :'data-*'
```erb
<%= awesome_share_buttons(@post.title, :image => "https://raw.github.com/vkulpa/social-share-button/master/lib/assets/images/sprites/social-share-button/tumblr.png", :'data-type' => 'photo') %>
<%= awesome_share_buttons(@post.title, :'data-source' => "https://raw.github.com/vkulpa/social-share-button/master/lib/assets/images/sprites/social-share-button/tumblr.png", :'data-type' => 'photo') %>
```
Those two above calls are identical.
Here are the mapping of attributes depending on you data-type parameter

<pre>
| data-type         | standard  | custom :"data-*" prefixed  |
--------------------------------------------------------------
| link (default)    | title     | data-title                 |
|                   | url       | data-url                   |
| text              | title     | data-title                 |
| photo             | title     | data-caption               |
|                   | image     | data-source                |
| quote             | title     | data-quote                 |
|                   |           | data-source                |
</pre>


## Demo

coming soon
