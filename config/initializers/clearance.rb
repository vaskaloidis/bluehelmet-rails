# Clearance.configure do |config|
#   config.routes = false
#   config.mailer_sender = "reply@example.com"
#   config.rotate_csrf_on_sign_in = true
# end


Clearance.configure do |config|
  config.routes = false
  config.allow_sign_up = false
  config.cookie_domain = ".bluehelmet.io"
  config.cookie_expiration = lambda { |cookies| 1.year.from_now.utc }
  config.cookie_name = "remember_token"
  config.cookie_path = "/"
  config.httponly = false
  config.mailer_sender = "no-reply@bluehelmet.io"
  config.password_strategy = Clearance::PasswordStrategies::BCrypt
  config.redirect_url = "/customer"
  config.rotate_csrf_on_sign_in = false
  config.secure_cookie = false
  config.sign_in_guards = []
  config.user_model = User
end