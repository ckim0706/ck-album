Devise.setup do |config|
  config.mailer_sender = "mail-to-send@from.com"
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.secret_key = '2a835a6478fe7f546a9d53b32d2b040f6603ae6c60b951a184103e580c4c3687c3dc7f4f8d92b3eda2bed88581be64fbd3c979cbc44059edb007caafc51ebfc0'
end
