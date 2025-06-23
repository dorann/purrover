class BrewsController < ApplicationController
  before_action :set_current_user
  before_action :set_brew, only: %i[ show edit update destroy ]

  def index
      @brews = @current_user.brewer.brews.all
  end

  def show
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

  def update
    respond_to do |format|
      if @brew.update(brew_params)
        format.html { redirect_to @brew, notice: "Brew was successfully updated." }
        format.json { render :show, status: :ok, location: @brew }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brew.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @brew.destroy!

    respond_to do |format|
      format.html { redirect_to brews_path, status: :see_other, notice: "Brew was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_current_user
      @current_user = Current.user
  end

  def set_brew
    @brew = Brew.find(params.expect(:id))
  end

  def brew_params
    params.expect(brew: [ :coffee_name, :coffee_roast ])
  end
end
