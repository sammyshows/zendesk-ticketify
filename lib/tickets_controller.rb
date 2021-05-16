require_relative 'ticket_view'

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
    app_ticket_id = @tickets_view.request_ticket_id
    ticket = @ticket_repository.find(app_ticket_id)
    @tickets_view.display_one(ticket)
  end
end
