class TicketsView
  def display_all(tickets)
    puts "   id   status   subject"
    tickets.each_with_index do |ticket, index|
      puts "#{index + 1}. #{ticket.id} "
    end
  end

  def display_one(ticket)
    puts "Subject: #{ticket.status}"
    puts "ID: #{ticket.id}"
    puts "Status: #{ticket.status}"
    puts "Priority: #{ticket.priority}"
    puts
  end
end
