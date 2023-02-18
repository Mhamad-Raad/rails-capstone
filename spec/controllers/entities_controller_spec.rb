require 'rails_helper'

RSpec.describe EntitiesController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      group = FactoryBot.create(:group)
      get :index, params: { group_id: group.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      group = FactoryBot.create(:group)
      get :new, params: { group_id: group.id }
      expect(response).to have_http_status(:success)
    end
  end
end
