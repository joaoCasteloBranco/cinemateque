class RolesController < ApplicationController

  def new
    @actor = Actor.find(params[:actor_id])
    @role = Role.new
    @movies = Movie.all
  end

  def create
    role_params = params
    .require(:role)
    .permit(
      :role,
      :movie
    )
    puts role_params
    @actor = Actor.find(params[:actor_id])
    @role = @actor.roles.new(role_params)

    if @role.save!
      redirect_to actor_path(@actor)
    else
      render :new
    end
  end

end