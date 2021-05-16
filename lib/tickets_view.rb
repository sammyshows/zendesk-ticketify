require 'date'

class TicketsView
  def display_all(tickets)
    puts "All tickets:"
    puts ""
    tickets.each_with_index do |ticket, index|
      puts "#{index + 1}. Date: #{DateTime.parse(ticket.created_at).strftime('%d/%m/%Y')}    Status: #{ticket.status}    Subject: #{ticket.subject}"
    end
  end

  def display_one(ticket, ticket_index)
    print `clear`
    puts "Ticket no. #{ticket_index + 1}:"
    puts ""
    puts "Subject: #{ticket.subject}"
    puts ""
    puts "Created at: #{DateTime.parse(ticket.created_at).strftime('%d/%m/%Y at %I:%M:%S %p')}"
    puts "Last update: #{DateTime.parse(ticket.updated_at).strftime('%d/%m/%Y at %I:%M:%S %p')}"
    puts ""
    puts "Type: #{ticket.type}"
    puts ""
    puts "Status: #{ticket.status}"
    puts ""
    puts "Priority: #{ticket.priority}"
    puts ""
    puts "Description: #{ticket.description}"
  end

  def request_ticket_id
    puts "Which ticket would you like to see? (choose a number)"
    print "> "
    gets.chomp.to_i
  end
end
