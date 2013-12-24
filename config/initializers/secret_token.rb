# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
AppTest::Application.config.secret_key_base = 'aa5f179a11bbbfdfcf37c642ae620f4779a72046561742d921729eba1605a52faf9eb49fb790bf56f41ede7e6effbf803da1afaa774e4890be869134ae288d9c'

require 'securerandom'

#def secure_token
 # token_file = Rails.root.join('.secret')
 # if File.exist?(token_file)
    # Use the existing token.
 #   File.read(token_file).chomp
 # else
    # Generate a new token and store it in token_file.
 #   token = SecureRandom.hex(64)
  #  File.write(token_file, token)
   # token
  #end
#end

#SampleApp::Application.config.secret_key_base = secure_token