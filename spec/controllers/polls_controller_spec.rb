require 'rails_helper'

RSpec.describe PollsController, type: :controller do
  describe "poll GET new" do
    it "assigns new poll instance variable" do
      get :new
      expect(assigns(:poll)).to be_a_new(Poll)
    end

    it "renders new_poll template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "poll PUT create" do
    it "creates a poll" do
      post :create, poll: FactoryGirl.attributes_for(:poll)
      expect(response).to redirect_to(poll_path(assigns(:poll)))
    end
  end
end
