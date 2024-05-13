class MoradorController < ApplicationController
  def index
    @morador = Morador.all
  end

  def show
    @morador = Morador.find(params[:id])
  end

  def new
    @morador = Morador.new
  end

  def create
    @morador = Morador.new(morador_params)

    if @morador.save
      redirect_to @morador
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def morador_params
      params.require(:morador).permit(:name, :cidade_atual)
    end
end
