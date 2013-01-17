# PryCommandResult

This return pry's command result and don't output it. You can assign it to variables and process it with ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'pry-command_result'
end
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```sh
$ gem install pry-command_result
```

## Usage

```
[1] pry(main)> result = command_result '$ Pry.method'
=> "\n\e[1mFrom:\e[0m proc.c (C Method):\n\e[1mNumber of lines:\e[0m 5\n\e[1mOwner:\e[0m Kernel\n\e[1mVisibility:\e[0m public\n\nVALUE\nrb_obj_method(VALUE obj, VALUE vid)\n{\n    \e[1;31mreturn\e[0m mnew(CLASS_OF(obj), obj, rb_to_id(vid), rb_cMethod, FALSE);\n}\n"
[2] pry(main)> puts result

From: proc.c (C Method):
Number of lines: 5
Owner: Kernel
Visibility: public

VALUE
rb_obj_method(VALUE obj, VALUE vid)
{
    return mnew(CLASS_OF(obj), obj, rb_to_id(vid), rb_cMethod, FALSE);
}
=> nil
[3] pry(main)> puts result.split("\n").grep(/From/)
From: proc.c (C Method):
=> nil
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
