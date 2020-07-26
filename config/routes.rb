Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#new'
  # get  "articles/index"  => "articles#index"
                            # 動画投稿フォーム　処理　一覧
  resources :posts, only: %i(new create index edit update destroy)

end