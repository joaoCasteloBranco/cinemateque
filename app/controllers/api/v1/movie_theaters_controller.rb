class Api::V1::MovieTheatersController <  ActionController::API
  

  def show
    movie_theater = find_movie_theater(params)

    render status: 200, json: {
      cidade: movie_theater.city,
      nome: movie_theater.name,
      capacidade_total: movie_theater.full_capacity

    }
  end

  private

  def find_movie_theater(params)
    MovieTheater.find(params[:id])
  end
end
