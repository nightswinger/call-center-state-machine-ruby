# frozen_string_literal: true

def handler(event:, context:)
  my_case_id = event['Case']
  my_message = event['Message']

  my_case_status = Random.rand.round
  my_message += if my_case_status == 1
                  'resolved...'
                else
                  'unresolved...'
                end

  { Case: my_case_id, Status: my_case_status, Message: my_message }
end
