require 'ticket_viewer'

describe TicketViewer do
  it 'should return all 100 tickets' do
    ticket_viewer = TicketViewer.new(ENV['ZENDESK_API_KEY'])
    expect(ticket_viewer.index).to eq(100)
  end
end
