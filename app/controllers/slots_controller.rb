class SlotsController < ApplicationController
  def index
    @slots = Slot.all
  end

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)
     if @slot.save
      redirect_to slots_path, notice: "Horário criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @slot = Slot.find(params[:id])
  end

  def update
    @slot = Slot.find(params[:id])
    if @slot.update(slot_params)
      redirect_to slots_path, notice: "Horário editado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  @slot = Slot.find(params[:id])
  @slot.destroy
  redirect_to slots_path, notice: "Horário deletado com sucesso!"
end

  private

  def slot_params
    params.require(:slot).permit(:date, :start_time, :available)
  end
end
