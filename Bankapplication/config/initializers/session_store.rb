# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Bankapplication_session',
  :secret      => 'd89a0c3783dd93a307a15068554b22b7ad0196826e20bc0e339b86fe446967f545ff3ef6b59978a1cf1ecb365d67805367ed817f4e01c2255eb9720aa5b510de'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
