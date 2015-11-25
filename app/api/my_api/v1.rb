class MyApi::V1 < Grape::API
  prefix 'api'
  format :json
  default_format :json
  version 'v1', using: :path
  default_error_status :'500'

  mount Dummy
end