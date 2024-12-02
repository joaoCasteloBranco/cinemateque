require 'rails_helper'

describe 'Movie Theaters API' do
  context "GET api/v1/movie_theaters/id" do

    it 'sucess' do
      movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')


      get "/api/v1/movie_theaters/1"
    end

    
  end

end