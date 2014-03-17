class AdventuresController < ApplicationController

  def index
    @adventures = Adventure.paginate page: params[:page] || 1, per_page: params[:per_page] || 20
  end

  def show
    @adventure = Adventure.find(params[:id])
  end

  def new
    @adventure = Adventure.new
  end

  def edit
    @adventure = Adventure.find(params[:id])
  end

  def create
    @adventure = Adventure.new(adventure_params)

    if @adventure.save
      redirect_to @adventure, notice: 'Adventure was successfully added.'
    else
      render action: 'new'
    end
  end

  def update
    @adventure = Adventure.find(params[:id])
    if @adventure.update(adventure_params)
      redirect_to @adventure, notice: 'Adventure was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @adventure = Adventure.find(params[:id])
    @adventure.destroy
    redirect_to adventures_url, notice: 'Adventure was successfully deleted.'
  end


  private

  def adventure_params
    params.require(:adventure).permit(:name, :location, :adventure_type, :adventure_date, :comments)
  end

end