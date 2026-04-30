puts "1(新規でメモを作成) 2(既存のメモを編集)"

input = gets.to_i

if input == 1
  puts "拡張子を除いたファイス名を入力してください"
  file_name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを押してください"
  content = readlines
  File.open("#{file_name}.txt", "w") do |file|
    file.puts content
  end
elsif input == 2
  puts "編集したいファイル名を入力してください"
  file_name = gets.chomp
  if File.exist?("#{file_name}.txt")
    puts "内容を記入してください"
    puts "完了したらCtrl + Dを押してください"
    content = readlines
    File.open("#{file_name}.txt", "a") do |file|
      file.puts content
    end
  else 
    puts "ファイルが見つかりませんでした"
  end
else 
  puts "不正な入力．1か2を入力してください"
end
