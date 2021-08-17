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



hs = { 'key' => 'value' }
symbol_hs = { key: 100 }

p hs
p symbol_hs

# {"key"=>"value"}
# {:key=>100}



p Dir.pwd
p File.open('test.text', 'w')
p Dir.glob('/Users/sakai_yutarou/code/ruby-object/*')

# "/Users/sakai_yutarou/code/ruby-object"
# <File:test.text>
# ["/Users/sakai_yutarou/code/ruby-object/test.text", "/Users/sakai_yutarou/code/ruby-object/index.rb"]