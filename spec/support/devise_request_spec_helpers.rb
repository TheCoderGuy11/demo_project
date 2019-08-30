module DeviseRequestSpecHelpers

  include Warden::Test::Helpers

  def sign_in
    @user ||= FactoryGirl.create(:user)
    @user.save
    allow(request.env['warden']).to receive(:authenticate!).and_return(@user)
    allow(controller).to receive(:current_user).and_return(@user)
  
  end

  def sign_out(resource_or_scope)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    logout(scope)
  end
end
