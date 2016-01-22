json.quotes do
  json.array! @quotes, partial: 'quote', as: :quote
end
json.other_peoples_quotes do
  json.array! @other_peoples_quotes, partial: 'quote', as: :quote
end