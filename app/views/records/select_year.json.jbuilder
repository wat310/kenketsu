json.array! @select_year do |record|
  json.id record.id
  json.day record.donation_day
  json.method record.inspection_method_i18n
end