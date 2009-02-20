# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_models-in-migrations_session',
  :secret      => '94babfa4c5d12b011e3487efcbc0edd40014b46b11e736cce3b13cf8bdd138f000fcc94527de0a7a8d24ca070d5bfb9d60bc85c9c6913b12e7158aa2c71b05b5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
