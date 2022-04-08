require "csv"

puts "1（新規でメモを作成）2（既存のメモを編集する）"

number = gets.chomp

if number == "1"
  puts "拡張子を除いたファイルを入力してください。"

  file_name = gets.chomp

  puts "メモしたい内容を記入してください。"
  puts " 完了したらCtrl + D を押します。"

  input = $stdin.read

  CSV.open("#{file_name}.csv", "w") do |memo|
    memo << ["#{input}"]
  end

elsif number == "2"
  puts "拡張子を除いたファイルを入力してください。"

  file_name = gets.chomp

  puts "編集内容を入力してください。"
  puts " 完了したらCtrl + D を押します。"

  input = $stdin.read
  CSV.open("#{file_name}.csv", "a") do |memo|
    memo << ["#{input}"]
  end

else
  puts "エラーです。"
end


