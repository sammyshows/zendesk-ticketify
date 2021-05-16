class Ticket
  attr_reader :id, :status, :priority, :subject, :description, :due_at, :assignee_id, :created_at, :updated_at, :type

  def initialize(attributes = {})
    @id = attributes[:id]
    @status = attributes[:status]
    @priority = attributes[:priority]
    @subject = attributes[:subject]
    @description = attributes[:description]
    @due_at = attributes[:due_at]
    @assignee_id = attributes[:assignee_id]
    @created_at = attributes[:created_at]
    @updated_at = attributes[:updated_at]
    @type = attributes[:type]
  end
end
