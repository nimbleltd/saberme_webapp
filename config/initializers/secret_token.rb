# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

if Rails.env.development? or Rails.env.test?
 Saberme::Application.config.secret_token = 'd029901d6521f12c478c3523d4c2115ec442bd2340c9b30b8d4247c6f009eb5c2cab55bcb67f6392b0d9c589be8efd5eb9b198885eb51767a015afdbfea28840'
else
    Saberme::Application.config.secret_token = ENV['SECRET_TOKEN']
end


# use "rake secret" to generate a random token
#Tell Heroku what your file is
# heroku config:set SECRET_TOKEN = "<random token here>" --app <appname>