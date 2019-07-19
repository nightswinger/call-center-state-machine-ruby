# frozen_string_literal: true

def handler(event:, context:)
  my_case_id = event['Case']
  my_message = "#{event['Message']} escalating."
  my_case_status = event['Status']

  { Case: my_case_id, Status: my_case_status, Message: my_message }
end
