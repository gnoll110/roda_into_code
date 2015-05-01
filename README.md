# roda_intro_code
Roda framework intro code sample

To run the code on the home page of the [project's website][1].

## Install & run

```
> git clone https://github.com/gnoll110/roda_intro_code.git
> cd roda_intro_code
> bundle install
..................
> bundle exec rspec
> bundle exec rackup
```

Note: The target function in config.ru only handles rbenv at the moment.
This is needed to allow rspec to test the Roda app, without causing to start up as well.
Feel free to submit a pull request.

[1]: http://roda.jeremyevans.net/
