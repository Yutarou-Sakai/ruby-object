ar = %w'aa bb cc dd'

ar.each_with_index do |v ,index|
  puts "インデックスの#{index}番目は #{v} です"
end

# インデックスの0番目は aa です
# インデックスの1番目は bb です
# インデックスの2番目は cc です
# インデックスの3番目は dd です


ar = %w'aa bb cc dd'

ar.map! do |v|
  v + '999'
end

p ar

# ["aa999", "bb999", "cc999", "dd999"]