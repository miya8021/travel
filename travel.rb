puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

# コードを追記
#プランのデータ
plans = [
  {place: "沖縄旅行", price: 10000},
  {place: "北海道旅行", price: 20000},
  {place: "九州旅行", price: 15000}
]

#プランの選択
while true
  print "プランの番号を選択 > "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts "1~3の番号を入力して下さい。"
end
chosen_plan = plans[plan_num - 1 ]

puts "#{chosen_plan[:place]}ですね。"
puts "何名で予約されますか？"

#人数を選択
while true
  print "人数を入力 > "
  people_num = gets.to_i
  break if people_num >= 1
  puts "1以上を入力して下さい。"
end
  puts "#{people_num}名ですね。"

#合計金額
total_price = chosen_plan[:price] * people_num
if people_num >=5
  puts "5名以上ですので10%割引となります。"
  total_price *= 0.9
end
  puts "合計料金は#{total_price.floor}円になります。"