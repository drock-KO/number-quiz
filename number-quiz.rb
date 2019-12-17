#数当てゲームです
puts "憶測ゲームへようこそ！"
one_more = "もう一度憶測してください！："
com_num =[*1..10]
rand = com_num.sample
count = 0
print "#{com_num.first}から#{com_num.last}の中で1つ数字を選んでください！："
while true
  user_num = gets.to_i
  count += 1
  if com_num.include?(user_num) #user_numの数がcom_numに含まれているときの処理
    if user_num == rand
      puts "正解！おめでとうございます！"
      break
    elsif user_num < rand
      puts "あなたが選んだ数字は正解の数字より小さいです！"
      print one_more
    elsif user_num > rand
      puts "あなたが選んだ数字は正解の数字より大きいです！"
      print one_more
    end
  elsif com_num.last < user_num #user_numの数がcom_numに含まれていないときの処理
    print "#{com_num.last}以下の数字を入力してください！"
  elsif  com_num.first > user_num
    print "#{com_num.first}以上の数字を入力してください！"
  end
end
puts " #{count}回目で正解しました！"
