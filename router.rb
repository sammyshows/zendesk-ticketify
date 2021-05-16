class Router
  def initialize(tickets_controller)
    @tickets_controller = tickets_controller
    @running = true
  end

  def run
    puts "Welcome to the Zendesk ticket app!"
    puts "----------------------------------"
    while @running
      route_user_action
      # print `clear`
    end
  end

  private

  def route_user_action
    print_actions
    choice = gets.chomp.to_i
    # print `clear`
    route_action(choice)
  end

  def print_actions
    puts " ----------------------------"
    puts "| What would you like to do? |"
    puts " ----------------------------"
    puts "1. View all tickets"
    puts "2. View a ticket"
    puts "8. Exit"
    print "> "
  end

  def route_action(choice)
    case choice
    when 1 then @tickets_controller.index
    when 2 then @tickets_controller.show
    when 8 then stop!
    else puts "Oops. Invalid input. Please try again..."
    end
  end

  def stop!
    @running = false
  end
end
