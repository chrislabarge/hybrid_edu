require 'spec_helper'

describe PrintablesController do

  describe "GET 'letter_tracing'" do
    it "returns http success" do
      get 'letter_tracing'
      response.should be_success
    end
  end

  describe "GET 'letters_in_words'" do
    it "returns http success" do
      get 'letters_in_words'
      response.should be_success
    end
  end

  describe "GET 'letter_search'" do
    it "returns http success" do
      get 'letter_search'
      response.should be_success
    end
  end

end
