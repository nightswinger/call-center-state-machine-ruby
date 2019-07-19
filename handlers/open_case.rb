# frozen_string_literal: true

def handler(event:, context:)
  my_case_id = event['inputCaseID']
  my_message = "Case #{my_case_id} : opend..."

  { Case: my_case_id, Message: my_message }
end
