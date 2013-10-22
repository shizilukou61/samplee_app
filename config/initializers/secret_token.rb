# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#SampleeApp::Application.config.secret_key_base = 'e287c996fa5ba826135bd3981d5223f895d3aa63fe2a6da7f3a2f4f0d549746ea2c5ea0d91e22caeb1a014c942ea9f6c1cfce9b41a5b3c9b773894c0ca7f2f42'

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    #Use the existing token.
    File.read(token_file).chomp
  else
    #Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
  end
end

SampleeApp::Application.config.secret_key_base = secure_token

=begin
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token
=end
