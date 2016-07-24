if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_gLZeoPaNtXpZ52WxJvIg5zXE',
    :secret_key => 'sk_test_8vgdo7aw25GHGTMUhz4Dssui'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]