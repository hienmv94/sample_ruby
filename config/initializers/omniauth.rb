Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :google_oauth2, '937042945878-qe0s3o5buub58jrvt2tj00i2k2hrkm6d.apps.googleusercontent.com', 'oBjb3Suj4kMWmFhJyBjDMnZa', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

  provider :facebook, '1029665297077870', '71f6bd316040fc8e6726c60df3aa2101', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

  provider :bitbucket, 'v8qN5CYJcT4DHDeP8F', 'dGFNhMzD6hNDV65h3sHBcmrpJFXHpUAZ'

end