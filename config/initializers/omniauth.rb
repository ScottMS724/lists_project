Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, '5c2fbe1c9c520bc507f8', '6186dc68e165afd92aa5d328e577fde36fb73628'
end