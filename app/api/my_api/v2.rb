class MyApi::V2 < Grape::API
  prefix 'api'
  format :json
  default_format :json
  version 'v2', using: :path
  default_error_status :'500'

  mount Dummy
end