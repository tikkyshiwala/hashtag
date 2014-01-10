require 'spec_helper'

describe SearchesController do

  describe "GET 'show/:id'" do
    let(:term) { '#ruby' }
    it "returns http success" do
      get 'show', id: term
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

end
