# parse-http
Ruby HTTP parser

## Installation
Add this line to your application's Gemfile:

```
gem 'parse-http', '1.0.1', require: 'parse-http'
```

...followed with:
```
bundle install
```

Or install it with:
```
gem install parse-http
```

## Usage
```
uri      = URI.parse('www.example.com')
response = Net::HTTP.get_response(uri)
parser = HttpParser.parse(response)
```

The `parser` object is a Struct which has two parameters: `success?` and `hash_response`. e.g.

```
 #<struct :success?=true, hash_response={"userId"=>1, "id"=>1, "title"=>"delectus aut autem", "completed"=>false}> 
```

The requirment for the response which is passed to the initializier is to have the `conent-type: application/json`

So far, it works with `Net::HTTTP` and `RestClient`.

## Run tests

```
rspec spec
```

### Thank you for using HttpParser!


