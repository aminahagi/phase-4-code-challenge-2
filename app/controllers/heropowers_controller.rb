class HeropowersController < ApplicationController

  # POST /heropowers or /heropowers.json
  def create
    hero_power = HeroPower.create(hero_power_params)
    if hero_power.valid?
      render json: hero_power.hero.as_json(include: :powers)
    else
      render json: { errors: hero_power.errors.full_messages }, status: 422
    end 
  end
  

  private
    

    # Only allow a list of trusted parameters through.
    def heropower_params
      params.require(:heropower).permit(:strength, :hero_id, :power_id)
    end
end