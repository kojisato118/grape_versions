class MyApi::V2::Dummy < Grape::API
  #http://qiita.com/yimajo/items/d4f484deda7cb9f61a49
  format :json

  helpers do
    def dummy_name
      'dummy'
    end
    def err401
      error!('401 Unauthorized', 401)
    end
    def err400
      error!('400 Bad Request', 400)
    end
  end

  resource :room do

    get :status do
      'room is good 2'
    end

    get :secret do
      err401
    end
  end
end