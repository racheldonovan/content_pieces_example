# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_content_pieces_example_session',
  :secret      => '3d68189eee50c4876aeea3cb395bdb7e2d4f721008b13458b610b796e867eb42e8344c2072555f69df59a834624e704fe73c0e548359b4d4ac83c160e057ede9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
