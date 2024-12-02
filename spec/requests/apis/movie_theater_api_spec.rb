require 'rails_helper'

describe 'Movie Theaters API' do
  context "GET api/v1/movie_theaters/id" do

    it 'sucess' do
      movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
      movie_theater.rooms.create(name: 'Sala 01', capacity: 100)
      movie_theater.rooms.create(name: 'Sala 02', capacity: 130)
      get "/api/v1/movie_theaters/1"

      json_response = JSON.parse(response.body)

      # Assert
      cidade = json_response[:cidade]
      nome = json_response[:nome]
      capacidade = json_response[:capacidade]

      puts json_response

      exceptions(cidade).to eq 'Brasília'
      exceptions(nome).to eq 'Cine Paradiso'
      exceptions(capacidade).to eq 230


    end

    
  end

end