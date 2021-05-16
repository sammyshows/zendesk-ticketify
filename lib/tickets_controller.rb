require_relative 'tickets_view'

class TicketController
  def initialize(ticket_repository)
    @ticket_repository = ticket_repository
    @tickets_view = TicketsView.new
  end

  def index
    tickets = @ticket_repository.all
    @tickets_view.display_all(tickets)
  end

  def show
    ticket_index = @tickets_view.request_ticket_id - 1
    ticket = @ticket_repository.all[ticket_index]
    @tickets_view.display_one(ticket)
  end
end
