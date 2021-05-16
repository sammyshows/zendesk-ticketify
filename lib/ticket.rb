class Ticket
  attr_reader :id, :status, :priority, :subject, :description, :due_at, :assignee_id

  def initialize(attributes = {})
    @app_id = attributes[:app_id]
    @id = attributes[:id]
    @status = attributes[:meal]
    @priority = attributes[:priority]
    @subject = attributes[:subject]
    @description = attributes[:description]
    @due_at = attributes[:due_at]
    @assignee_id = attributes[:assignee_id]
  end
end
