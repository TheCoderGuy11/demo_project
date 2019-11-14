Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_Da5DM20igQ6zjGkWb36kIkUh00Gvs1WMNa'],
  :secret_key      => ENV['sk_test_ddzoGNNQWcf1RvlcEqnOkeDb00m7BgPfZQ']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]