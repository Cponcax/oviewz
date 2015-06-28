class ProcesosController < ApplicationController
  before_action :find_note, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
  @procesos = Proceso.where(user_id: current_user)
  end

  def show
    
  end

  def new
    #@proceso = Proceso.new
   @proceso = current_user.procesos.build

  end

  def create
    @proceso = current_user.procesos.build(proceso_params)

    if @proceso.save
      redirect_to @proceso
    else 
      render 'new'
    end
  end

    def update
    if @proceso.update(proceso_params)
      redirect_to @proceso
    else
      render 'edit'
  end
end

  def destroy
    @proceso.destroy
    redirect_to procesos_path
  end

  private

  def find_note
    @proceso = Proceso.find(params[:id])
  end

  def proceso_params
    params.require(:proceso).permit(:name, :description, :function, :workplace, :deadline, :email, :state, :color, :company_logo )
  end



end
