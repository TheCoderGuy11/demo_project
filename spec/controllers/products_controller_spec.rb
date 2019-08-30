require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  include Devise::Test::ControllerHelpers

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
  end

  describe 'Products controller request specs' do
    login_user

    it "should have a current_user" do
      # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
      expect(subject.current_user).to_not eq(nil)
    end

    context 'GET #index' do 
      it 'should success and render to index page' do
          get :index
          expect(response).to have_http_status(200)
          expect(response).to render_template :index
      end
    end
  end
end