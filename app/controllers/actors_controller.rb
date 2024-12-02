class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def create
    actor_params = params
    .require(:actor)
    .permit(
      :name,
      :nacionality,
      :birth_date
    )

    @actor = Actor.new(actor_params)

    if @actor.save!
      redirect_to actors_path, notice: "Artista Adiciona com Sucesso"
    else
      render :new
    end
  end
end