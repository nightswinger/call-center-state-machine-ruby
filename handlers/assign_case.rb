# frozen_string_literal: true

def handler(event:, context:)
  my_case_id = event['Case']
  my_message = "#{event['Message']} assigned..."

  { Case: my_case_id, Message: my_message }
end
