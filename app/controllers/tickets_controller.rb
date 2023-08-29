class TicketsController < ApplicationController
    def index
        @ticket_data = Ticket.includes(:excavators).all
    end

    def show
        @ticket = Ticket.find(params[:id])
    end
end
