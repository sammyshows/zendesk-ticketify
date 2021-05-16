class TicketsView
  def display_all(tickets)
    puts "   id   status   subject"
    tickets.each_with_index do |ticket, index|
      puts "#{index + 1}. #{ticket.id} #{ticket.status} #{ticket.subject}"
    end
  end

  def display_one(ticket)
    puts "Subject: #{ticket.subject}"
    puts "ID: #{ticket.id}"
    puts "Status: #{ticket.status}"
    puts "Priority: #{ticket.priority}"
  end

  def request_ticket_id
    puts "Which ticket would you like to see? (choose a number)"
    print "> "
    gets.chomp.to_i
  end
end
