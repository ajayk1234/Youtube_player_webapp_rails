OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
 
  provider :google_oauth2, '1078780881852-u34ehnbq12c55bf45u63fe3f8gjf9dqe.apps.googleusercontent.com', 'eJgFKc14u3gQGcbgkASY0zYT', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end