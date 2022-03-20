Ransack.configure do |config|
  config.add_predicate 'lteq_end_of_day',
                  arel_predicate: 'lteq',
                  formatter: proc { |v| v.end_of_day }
  
  #特定日付で検索したい場合以下predicateを使う
  # config.add_predicate 'date_eq',
  #           arel_predicate: 'eq',
  #           formatter: proc { |v| v.to_date }

end