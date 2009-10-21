# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nested_set_bug_demo_session',
  :secret      => 'bcff241a8ab2d422319b12e7371969d62fb50bc234c5dd19fb9de478d1f50505d24c0304bc912e9a173b8e3f3b975a81c7582c48dd2e81f0276d86b741890513'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
