class ChargesController < ApplicationController
  def stripe_callback
    options = {
      site: 'https://connect.stripe.com',
      authorize_url: '/oauth/authorize',
      token_url: '/oauth/token'
    }
    code = params[:code]
    client = OAuth2::Client.new(ENV['STRIPE_CONNECT_CLIENT_ID'], ENV['STRIPE_SECRET_KEY'], options)
    @resp = client.auth_code.get_token(code, :params => {:scope => 'read_write'})
    @access_token = @resp.token
    @user.update!(uid: @resp.params["stripe_user_id"]) if @resp
    flash[:notice] = "Your account has been successfully created and is ready to process payments!"
  end

  def payment_profile
    @account = Stripe::Account.retrieve("#{@user.uid.to_s}") if @user.uid.present?
    @balance = Stripe::Balance.retrieve() if @user.uid.present?
  end
end
