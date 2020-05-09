# README

## Disable fields with errors
resources : https://coderwall.com/p/s-zwrg/remove-rails-field_with_errors-wrapper

If errors, rails generate automatically a div class fields_with_errors. 
Disable this with this helper methon inside cofig/environnment.rb

```ruby
  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end
```

## Use Hirb for easy console tesing
gem 'hirb'
$ bundle install 

$ rails console 
$Hrib.enable 
=> true 

Good to go !

## Create a boolean of a method to check if true or false 
use !! 
for exemple from our application controller 

after checking if current_user is set using memoisation = @current_user ||= something
def logged_in?
  !!current_user 
end
