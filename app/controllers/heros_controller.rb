class HerosController < ApplicationController
  # before_action :set_hero, only: %i[ show edit update destroy ]

  # GET /heros or /heros.json

  def index
    heroes = Hero.all
    render json: heroes
  end
 

# GET /heroes/1 or /heroes/1.json
def show
  hero = Hero.find_by(id: params[:id])
  if hero
    render json: hero, include: :powers
  else
    render json: { error: "Hero not found" }, status: 404
  end
end
end
