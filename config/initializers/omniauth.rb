Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :github, ENV['HH_GITHUB_KEY'], ENV['HH_GITHUB_SECRET']
  provider :facebook, ENV['HH_FB_KEY'], ENV['HH_FB_SECRET']
  provider :linkedin, ENV['HH_LI_KEY'], ENV['HH_LI_SECRET']

end