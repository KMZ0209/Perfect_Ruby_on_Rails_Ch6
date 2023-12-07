Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    # client_id と client_secret は一旦保留
    provider :github, "YOUR_CLIENT_ID", "YOUR_CLIENT_SECRET"
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end
