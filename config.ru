require_relative "./config/environment"
# allow cors
use Rack::Cors do 
    allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options]
    end
end
# parse json from the request body into params hash
use Rack::JSONBodyParser

# our app
use ProjectController
use MemberController
use UserController
run ApplicationController
