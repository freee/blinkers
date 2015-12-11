# Blinkers

A Rails plugin to handle sensitive data securely.

# Usage

Set in Gemfile and install with bundler.

```Gemfile
gem 'blinkers'
```

```
bundle install
```

# secure_params

`secure_params` is FILTERED params.
It filters all data specified in `Rails.application.config.filter_parameters` and converts to `[FILTERED]`.

So if you want to pass `params` to log file or other services, passing `secure_params` would be safer.

```rb
params['password']
=> 'password123'

secure_params['password']
=> '[FILTERED]'
```

## Adding sensitive keys

If you want to filter other data.
Just add to `filter_parameters`.

```rb
secure_params['secure_data']
=> 'THE SECRET DATA'

Rails.application.config.filter_parameters << [:secure_data]

secure_params['secure_data']
=> '[FILTERED]'
```

“Rails”, “Ruby on Rails”, and the Rails logo are registered trademarks of David Heinemeier Hansson. All rights reserved.
