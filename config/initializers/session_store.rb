# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_god-interface_session',
  :secret      => '54861606953cf12337cb7913f67e5bc7f85e840aebc24288d84ab4a0d2b3c75fa0dbb1675eabb9dae5665d276e0e8c731b3d1185a2b0562c66694768add69c92'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
