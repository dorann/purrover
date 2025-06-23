class BrewsController < ApplicationController
  before_action :set_current_user

  def index
      @brews = @current_user.brewer.brews.all
  end

  def new
      @brew = @current_user.brewer.brews.new
  end

  def create
      @brew = @current_user.brewer.brews.new(brew_params)

      respond_to do |format|
      if @brew.save
          format.html { redirect_to :root, notice: "Brew was successfully created." }
          format.json { render :index, status: :created, location: @brews }
      else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @brew.errors, status: :unprocessable_entity }
      end
      end
  end

  private
  def set_current_user
      @current_user = Current.user
  end

  def brew_params
    params.expect(brew: [ :coffee_name, :coffee_roast ])
  end
end