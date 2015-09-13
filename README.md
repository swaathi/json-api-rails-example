# json-api-rails-example
A sample Rails application to demonstrate JSON API rendering and consumption for [GDG Indore](http://www.gdgindore.in).

There are two Rails code bases, one renders the JSON API and the other consumes it. `blogger` renders it's content via JSON to be consumed by the listening `client`.

### Installation
1. Install [Rails 4.x.x](http://rubyonrails.org) on your environment.
2. Install all required gems with `bundle install`.
3. Run `blogger` on localhost:3000.
4. Run `client` on another port. (Eg., 3005)

### Configuration
1. Generate a token to authenticate incoming API requests on `blogger`. Visit `localhost:3000/tokens` to get valid token keys.
2. Add the generated `access` and `secret` keys to `client/config/blogs.yml`

### Contribution
1. Fork the repository and make changes.
2. Give me a pull request with a valid description.

### Support
Raise bugs/issues at https://github.com/swaathi/json-api-rails-example/issues
