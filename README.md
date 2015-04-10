# Rack::Norris™

Insert `X-Chuck-Norris` header with a random Chuck Norris joke into your rack app!

## What?

This project is a stupid simple rack middleware that will inject a header
with random Chuck Norris joke into every response.

<img src="norris.jpg" />

## Get It

Bundle that shit:

```
gem "rack-norris"
```

## Run it

In your fabulous `config.ru` add some stuff:

```ruby
require "rack/norris"
use Rack::Norris
```

## See It

Curl your app:

```
curl -i http://localhost:5000
```

Here we go:

```
HTTP/1.1 302 Found
Content-Type: text/html; charset=utf-8
Cache-Control: no-cache
X-Request-Id: 521b03e0-ebd0-4e9c-ad81-1776ff5a9b85
X-Runtime: 0.009691
X-Chuck-Norris: Chuck Norris believes that a flamethrower is an essential part of a well balanced breakfast.
```