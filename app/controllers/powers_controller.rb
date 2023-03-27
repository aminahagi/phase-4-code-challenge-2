class PowersController < ApplicationController

  # GET /powers
  def index
    powers = Power.all
    render json: powers
  end

  # GET /powers/:id
  def show
    power = Power.find_by(id: params[:id])
    if power
      render json: power
    else
      render json: { error: 'Power not found' }, status: :not_found
    end
  end

  def update
    power = Power.find_by(id: params[:id])
    if power
      if power.update(power_params)
        render json: power
      else
        render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: 'Power not found' }, status: :not_found
    end
  end
  
  

  private

  # Only allow a list of trusted parameters through.
  def power_params
    params.require(:power).permit(:name, :description)
  end

end