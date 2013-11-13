# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Capistrano::Application.config.secret_key_base = '2b1ae8835d8002a5abdac12654b8ce7eef416a50fa382f4b2bf367bff0e65dc070584bc545c218cc2a2325f545ed7908096c9af7f670c6fb2aa331e549a091b1'
