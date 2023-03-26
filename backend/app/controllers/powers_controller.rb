class PowersController < ApplicationController
 
  # GET /powers or /powers.json
  def index
    powers = Power.all
    render json: powers
  end

  # GET /powers/1 or /powers/1.json
# GET /powers/1 or /powers/1.json
def show
  power = Power.find(params[:id])
  render json: power
rescue ActiveRecord::RecordNotFound
  render json: {error: "Power not found"}, status: 404
end

# PATCH /powers/:id
def update
  power = Power.find_by(id: params[:id])
  if power
    if power.update(power_params)
      render json: power
    else
      render json: {errors: power.errors.full_messages}, status: 422
    end
  else
    render json: {error: "Power not found"}, status: 404
  end
end


 

 
  private
    # Only allow a list of trusted parameters through.
    def power_params
      params.require.permit(:name, :description)
    end
end
