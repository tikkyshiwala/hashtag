require 'spec_helper'

describe SearchesController do

  describe "GET 'show/:id'" do
    let(:term) { '#ruby' }
    it "returns http success" do
      get 'show', id: term
      expect(response).to be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      expect(response).to be_success
    end
  end

end
