require_relative 'ticket'

class TicketRepository

  def initialize(ticket_data)
    @ticket_data = ticket_data
    @tickets = []
    load_tickets
  end

  def all
    @tickets
  end

  private

  def load_tickets
    @ticket_data.each do |ticket|
      ticket_hash = {}
      ticket_hash[:id] = ticket["id"]
      ticket_hash[:status] = ticket["status"]
      ticket_hash[:priority] = ticket["priority"]
      ticket_hash[:subject] = ticket["subject"]
      ticket_hash[:description] = ticket["description"]
      ticket_hash[:due_at] = ticket["due_at"]
      ticket_hash[:assignee] = ticket["assignee"]
      ticket_hash[:created_at] = ticket["created_at"]
      ticket_hash[:updated_at] = ticket["updated_at"]
      ticket_hash[:type] = ticket["type"]

      @tickets << Ticket.new(ticket_hash)
    end
  end
end
