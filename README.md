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