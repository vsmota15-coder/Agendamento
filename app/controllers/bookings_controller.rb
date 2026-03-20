class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  
  def new
    @booking = Booking.new
    @slots = Slot.where(available: true)
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      @booking.slot.update(available: false)
      redirect_to slots_path, notice: "Agendamento realizado com sucesso!"
    else
      @slots = Slot.where(available: true)
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :phone, :slot_id)
  end
end
