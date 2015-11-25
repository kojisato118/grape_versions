module MyApi
  class API < Grape::API
    mount MyApi::V1
    mount MyApi::V2
  end
end