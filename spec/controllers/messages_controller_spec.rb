require 'spec_helper'

describe MessagesController, "POST create" do
  context "with valid params" do
    let(:valid_params){attributes_for :message}

    it "returns 201 status" do
      post :create, message: valid_params, format: :json
      expect(response.status).to eq(201)
    end

    it "does not render json errors" do
      post :create, message: valid_params, format: :json
      expect(response_json).to_not have_key("errors")
    end
  end

  context "with invalid params" do
    let(:invalid_params){{hello: "world"}}

    it "returns 422 with invalid parameters" do
      post :create, message: invalid_params, format: :json
      expect(response.status).to eq(422)
    end

    it "returns errors in JSON invalid parameters" do
      post :create, message: invalid_params, format: :json
      expect(response_json).to have_key("errors")
    end
  end


  def response_json
    JSON.parse response.body
  end

end
