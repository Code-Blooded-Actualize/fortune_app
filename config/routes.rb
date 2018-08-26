Rails.application.routes.draw do
  get "/fortune_url" => 'api/numbers#fortune_action'
  get "/lotto_url" => 'api/numbers#lotto_action'
end
