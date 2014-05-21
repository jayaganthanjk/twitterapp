require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }
  describe "signin" do
    before { visit signin_path }
    describe "with invalid information" do
      before { click_button "Sign in" }
      it { should have_title('Sign in') }
    end
  end
end
