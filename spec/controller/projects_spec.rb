require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end

  context "GET #new" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      count = Project.count
      get :new
      # expect(response.success).to eq(true)
      expect(Project.count).to eq(count)
    end
  end

  context "GET #edit" do
    it "returns a success response" do
      get :edit
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

end